.class public Lcom/wsw/cospa/dao/ComicSourceBeanDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/wsw/cospa/bean/ComicSourceBean;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "COMIC_SOURCE_BEAN"


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

    const-string v1, "\"COMIC_SOURCE_BEAN\" (\"BOOK_SOURCE_TYPE\" TEXT,\"BOOK_SINGLE_THREAD\" TEXT,\"BOOK_DELAY_TIME\" TEXT,\"BOOK_SOURCE_URL\" TEXT PRIMARY KEY NOT NULL ,\"BOOK_SOURCE_NAME\" TEXT,\"BOOK_SOURCE_GROUP\" TEXT,\"CHECK_URL\" TEXT,\"LAST_UPDATE_TIME\" INTEGER,\"SERIAL_NUMBER\" INTEGER NOT NULL ,\"WEIGHT\" INTEGER NOT NULL ,\"ENABLE\" INTEGER NOT NULL ,\"RULE_FIND_URL\" TEXT,\"RULE_SEARCH_URL\" TEXT,\"RULE_SEARCH_LIST\" TEXT,\"RULE_SEARCH_URL_NEXT\" TEXT,\"RULE_SEARCH_NAME\" TEXT,\"RULE_SEARCH_AUTHOR\" TEXT,\"RULE_SEARCH_KIND\" TEXT,\"RULE_SEARCH_LAST_CHAPTER\" TEXT,\"RULE_SEARCH_COVER_URL\" TEXT,\"RULE_SEARCH_NOTE_URL\" TEXT,\"RULE_BOOK_NAME\" TEXT,\"RULE_BOOK_AUTHOR\" TEXT,\"RULE_CHAPTER_ID\" TEXT,\"RULE_CHAPTER_URL\" TEXT,\"RULE_CHAPTER_URL_NEXT\" TEXT,\"RULE_CHAPTER_PARENT_ID\" TEXT,\"RULE_CHAPTER_PARENT_NAME\" TEXT,\"RULE_COVER_URL\" TEXT,\"RULE_INTRODUCE\" TEXT,\"RULE_CHAPTER_LIST\" TEXT,\"RULE_CHAPTER_NAME\" TEXT,\"RULE_CONTENT_URL\" TEXT,\"RULE_CONTENT_URL_NEXT\" TEXT,\"RULE_BOOK_CONTENT\" TEXT,\"RULE_BOOK_CONTENT_DECODER\" TEXT,\"HTTP_USER_AGENT\" TEXT,\"RULE_BOOK_KIND\" TEXT,\"RULE_BOOK_LAST_CHAPTER\" TEXT,\"RULE_BOOK_URL_PATTERN\" TEXT,\"LOGIN_URL\" TEXT,\"LOGIN_URL_RESULT\" TEXT,\"SOURCE_REMARK\" TEXT);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "IDX_COMIC_SOURCE_BEAN_BOOK_SOURCE_URL ON \"COMIC_SOURCE_BEAN\" (\"BOOK_SOURCE_URL\" ASC);"

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

    const-string p1, "\"COMIC_SOURCE_BEAN\""

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
    check-cast p2, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/dao/ComicSourceBeanDao;->do(Landroid/database/sqlite/SQLiteStatement;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    return-void
.end method

.method public bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/dao/ComicSourceBeanDao;->if(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    return-void
.end method

.method public final break(Lcom/wsw/cospa/bean/ComicSourceBean;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public case(Lcom/wsw/cospa/bean/ComicSourceBean;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final do(Landroid/database/sqlite/SQLiteStatement;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSingleThread()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookDelayTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 10
    :cond_3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 12
    :cond_4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 14
    :cond_5
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getCheckUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 16
    :cond_6
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLastUpdateTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_7
    const/16 v0, 0x9

    .line 18
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getSerialNumber()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 19
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getWeight()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 20
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getEnable()Z

    move-result v1

    if-eqz v1, :cond_8

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_8
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 21
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleFindUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xc

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 23
    :cond_9
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xd

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 25
    :cond_a
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v1, 0xe

    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 27
    :cond_b
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrlNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0xf

    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 29
    :cond_c
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0x10

    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 31
    :cond_d
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchAuthor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x11

    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 33
    :cond_e
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchKind()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const/16 v1, 0x12

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 35
    :cond_f
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchLastChapter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x13

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 37
    :cond_10
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchCoverUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v1, 0x14

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 39
    :cond_11
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchNoteUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/16 v1, 0x15

    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    :cond_12
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x16

    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 43
    :cond_13
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookAuthor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x17

    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 45
    :cond_14
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const/16 v1, 0x18

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 47
    :cond_15
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x19

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 49
    :cond_16
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterUrlNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const/16 v1, 0x1a

    .line 50
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :cond_17
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const/16 v1, 0x1b

    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 53
    :cond_18
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const/16 v1, 0x1c

    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 55
    :cond_19
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleCoverUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/16 v1, 0x1d

    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 57
    :cond_1a
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleIntroduce()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/16 v1, 0x1e

    .line 58
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 59
    :cond_1b
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/16 v1, 0x1f

    .line 60
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :cond_1c
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/16 v1, 0x20

    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 63
    :cond_1d
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleContentUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/16 v1, 0x21

    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 65
    :cond_1e
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleContentUrlNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/16 v1, 0x22

    .line 66
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 67
    :cond_1f
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const/16 v1, 0x23

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 69
    :cond_20
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookContentDecoder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    const/16 v1, 0x24

    .line 70
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 71
    :cond_21
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getHttpUserAgent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    const/16 v1, 0x25

    .line 72
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 73
    :cond_22
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookKind()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    const/16 v1, 0x26

    .line 74
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 75
    :cond_23
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookLastChapter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    const/16 v1, 0x27

    .line 76
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 77
    :cond_24
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookUrlPattern()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const/16 v1, 0x28

    .line 78
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 79
    :cond_25
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    const/16 v1, 0x29

    .line 80
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 81
    :cond_26
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrlResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    const/16 v1, 0x2a

    .line 82
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 83
    :cond_27
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getSourceRemark()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_28

    const/16 v0, 0x2b

    .line 84
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_28
    return-void
.end method

.method public else(Landroid/database/Cursor;I)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 47

    move-object/from16 v0, p1

    .line 1
    new-instance v44, Lcom/wsw/cospa/bean/ComicSourceBean;

    add-int/lit8 v1, p2, 0x0

    .line 2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v4, p2, 0x2

    .line 4
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    add-int/lit8 v5, p2, 0x3

    .line 5
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    add-int/lit8 v6, p2, 0x4

    .line 6
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    add-int/lit8 v7, p2, 0x5

    .line 7
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    add-int/lit8 v8, p2, 0x6

    .line 8
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_6
    add-int/lit8 v9, p2, 0x7

    .line 9
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :goto_7
    add-int/lit8 v10, p2, 0x8

    .line 10
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v11, p2, 0x9

    .line 11
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    add-int/lit8 v12, p2, 0xa

    .line 12
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getShort(I)S

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    add-int/lit8 v13, p2, 0xb

    .line 13
    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v13, 0x0

    goto :goto_9

    :cond_9
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_9
    add-int/lit8 v14, p2, 0xc

    .line 14
    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v14, 0x0

    goto :goto_a

    :cond_a
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_a
    add-int/lit8 v15, p2, 0xd

    .line 15
    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_b

    const/4 v15, 0x0

    goto :goto_b

    :cond_b
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_b
    add-int/lit8 v3, p2, 0xe

    .line 16
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x0

    goto :goto_c

    :cond_c
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    :goto_c
    add-int/lit8 v3, p2, 0xf

    .line 17
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x0

    goto :goto_d

    :cond_d
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    :goto_d
    add-int/lit8 v3, p2, 0x10

    .line 18
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_e

    const/16 v19, 0x0

    goto :goto_e

    :cond_e
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    :goto_e
    add-int/lit8 v3, p2, 0x11

    .line 19
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_f

    const/16 v20, 0x0

    goto :goto_f

    :cond_f
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    :goto_f
    add-int/lit8 v3, p2, 0x12

    .line 20
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_10

    const/16 v21, 0x0

    goto :goto_10

    :cond_10
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    :goto_10
    add-int/lit8 v3, p2, 0x13

    .line 21
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_11

    const/16 v22, 0x0

    goto :goto_11

    :cond_11
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    :goto_11
    add-int/lit8 v3, p2, 0x14

    .line 22
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_12

    const/16 v23, 0x0

    goto :goto_12

    :cond_12
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    :goto_12
    add-int/lit8 v3, p2, 0x15

    .line 23
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_13

    const/16 v24, 0x0

    goto :goto_13

    :cond_13
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    :goto_13
    add-int/lit8 v3, p2, 0x16

    .line 24
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_14

    const/16 v25, 0x0

    goto :goto_14

    :cond_14
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    :goto_14
    add-int/lit8 v3, p2, 0x17

    .line 25
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_15

    const/16 v26, 0x0

    goto :goto_15

    :cond_15
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    :goto_15
    add-int/lit8 v3, p2, 0x18

    .line 26
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_16

    const/16 v27, 0x0

    goto :goto_16

    :cond_16
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v3

    :goto_16
    add-int/lit8 v3, p2, 0x19

    .line 27
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_17

    const/16 v28, 0x0

    goto :goto_17

    :cond_17
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_17
    add-int/lit8 v3, p2, 0x1a

    .line 28
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_18

    const/16 v29, 0x0

    goto :goto_18

    :cond_18
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    :goto_18
    add-int/lit8 v3, p2, 0x1b

    .line 29
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_19

    const/16 v30, 0x0

    goto :goto_19

    :cond_19
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v3

    :goto_19
    add-int/lit8 v3, p2, 0x1c

    .line 30
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_1a

    const/16 v31, 0x0

    goto :goto_1a

    :cond_1a
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v31, v3

    :goto_1a
    add-int/lit8 v3, p2, 0x1d

    .line 31
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_1b

    const/16 v32, 0x0

    goto :goto_1b

    :cond_1b
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v3

    :goto_1b
    add-int/lit8 v3, p2, 0x1e

    .line 32
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_1c

    const/16 v33, 0x0

    goto :goto_1c

    :cond_1c
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v33, v3

    :goto_1c
    add-int/lit8 v3, p2, 0x1f

    .line 33
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_1d

    const/16 v34, 0x0

    goto :goto_1d

    :cond_1d
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v34, v3

    :goto_1d
    add-int/lit8 v3, p2, 0x20

    .line 34
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_1e

    const/16 v35, 0x0

    goto :goto_1e

    :cond_1e
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v3

    :goto_1e
    add-int/lit8 v3, p2, 0x21

    .line 35
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1f

    const/16 v36, 0x0

    goto :goto_1f

    :cond_1f
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v36, v3

    :goto_1f
    add-int/lit8 v3, p2, 0x22

    .line 36
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_20

    const/16 v37, 0x0

    goto :goto_20

    :cond_20
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v37, v3

    :goto_20
    add-int/lit8 v3, p2, 0x23

    .line 37
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_21

    const/16 v38, 0x0

    goto :goto_21

    :cond_21
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v38, v3

    :goto_21
    add-int/lit8 v3, p2, 0x24

    .line 38
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_22

    const/16 v39, 0x0

    goto :goto_22

    :cond_22
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v39, v3

    :goto_22
    add-int/lit8 v3, p2, 0x25

    .line 39
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_23

    const/16 v40, 0x0

    goto :goto_23

    :cond_23
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v40, v3

    :goto_23
    add-int/lit8 v3, p2, 0x26

    .line 40
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_24

    const/16 v41, 0x0

    goto :goto_24

    :cond_24
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v41, v3

    :goto_24
    add-int/lit8 v3, p2, 0x27

    .line 41
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_25

    const/16 v42, 0x0

    goto :goto_25

    :cond_25
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v42, v3

    :goto_25
    add-int/lit8 v3, p2, 0x28

    .line 42
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_26

    const/16 v43, 0x0

    goto :goto_26

    :cond_26
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v43, v3

    :goto_26
    add-int/lit8 v3, p2, 0x29

    .line 43
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_27

    const/16 v45, 0x0

    goto :goto_27

    :cond_27
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v45, v3

    :goto_27
    add-int/lit8 v3, p2, 0x2a

    .line 44
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_28

    const/16 v46, 0x0

    goto :goto_28

    :cond_28
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v46, v0

    :goto_28
    move-object/from16 v0, v44

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v30

    move-object/from16 v29, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v33

    move-object/from16 v32, v34

    move-object/from16 v33, v35

    move-object/from16 v34, v36

    move-object/from16 v35, v37

    move-object/from16 v36, v38

    move-object/from16 v37, v39

    move-object/from16 v38, v40

    move-object/from16 v39, v41

    move-object/from16 v40, v42

    move-object/from16 v41, v43

    move-object/from16 v42, v45

    move-object/from16 v43, v46

    invoke-direct/range {v0 .. v43}, Lcom/wsw/cospa/bean/ComicSourceBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v44
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/dao/ComicSourceBeanDao;->try(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public goto(Landroid/database/Cursor;Lcom/wsw/cospa/bean/ComicSourceBean;I)V
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
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setBookSourceType(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setBookSingleThread(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setBookDelayTime(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setBookSourceUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setBookSourceName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setBookSourceGroup(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setCheckUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v2

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_7
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setLastUpdateTime(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x8

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setSerialNumber(I)V

    add-int/lit8 v0, p3, 0x9

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setWeight(I)V

    add-int/lit8 v0, p3, 0xa

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setEnable(Z)V

    add-int/lit8 v0, p3, 0xb

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v0, v2

    goto :goto_9

    :cond_9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleFindUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xc

    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, v2

    goto :goto_a

    :cond_a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xd

    .line 14
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v0, v2

    goto :goto_b

    :cond_b
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchList(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xe

    .line 15
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v0, v2

    goto :goto_c

    :cond_c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchUrlNext(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xf

    .line 16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v0, v2

    goto :goto_d

    :cond_d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x10

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v0, v2

    goto :goto_e

    :cond_e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchAuthor(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x11

    .line 18
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v0, v2

    goto :goto_f

    :cond_f
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchKind(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x12

    .line 19
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v0, v2

    goto :goto_10

    :cond_10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchLastChapter(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x13

    .line 20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object v0, v2

    goto :goto_11

    :cond_11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchCoverUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x14

    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v0, v2

    goto :goto_12

    :cond_12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchNoteUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x15

    .line 22
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v0, v2

    goto :goto_13

    :cond_13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x16

    .line 23
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object v0, v2

    goto :goto_14

    :cond_14
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookAuthor(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x17

    .line 24
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v0, v2

    goto :goto_15

    :cond_15
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x18

    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object v0, v2

    goto :goto_16

    :cond_16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x19

    .line 26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v0, v2

    goto :goto_17

    :cond_17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterUrlNext(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1a

    .line 27
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object v0, v2

    goto :goto_18

    :cond_18
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterParentId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1b

    .line 28
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object v0, v2

    goto :goto_19

    :cond_19
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterParentName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1c

    .line 29
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object v0, v2

    goto :goto_1a

    :cond_1a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleCoverUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1d

    .line 30
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object v0, v2

    goto :goto_1b

    :cond_1b
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleIntroduce(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1e

    .line 31
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object v0, v2

    goto :goto_1c

    :cond_1c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterList(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1f

    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    move-object v0, v2

    goto :goto_1d

    :cond_1d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x20

    .line 33
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    move-object v0, v2

    goto :goto_1e

    :cond_1e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleContentUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x21

    .line 34
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    move-object v0, v2

    goto :goto_1f

    :cond_1f
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleContentUrlNext(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x22

    .line 35
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object v0, v2

    goto :goto_20

    :cond_20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookContent(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x23

    .line 36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_21

    move-object v0, v2

    goto :goto_21

    :cond_21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_21
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookContentDecoder(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x24

    .line 37
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_22

    move-object v0, v2

    goto :goto_22

    :cond_22
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setHttpUserAgent(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x25

    .line 38
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_23

    move-object v0, v2

    goto :goto_23

    :cond_23
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_23
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookKind(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x26

    .line 39
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_24

    move-object v0, v2

    goto :goto_24

    :cond_24
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookLastChapter(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x27

    .line 40
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_25

    move-object v0, v2

    goto :goto_25

    :cond_25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_25
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookUrlPattern(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x28

    .line 41
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_26

    move-object v0, v2

    goto :goto_26

    :cond_26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_26
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setLoginUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x29

    .line 42
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_27

    move-object v0, v2

    goto :goto_27

    :cond_27
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_27
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setLoginUrlResult(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x2a

    .line 43
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_28

    :cond_28
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_28
    invoke-virtual {p2, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->setSourceRemark(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/dao/ComicSourceBeanDao;->case(Lcom/wsw/cospa/bean/ComicSourceBean;)Z

    move-result p1

    return p1
.end method

.method public final if(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSingleThread()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 5
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookDelayTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 7
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 9
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 10
    :cond_3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 11
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 12
    :cond_4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 13
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 14
    :cond_5
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getCheckUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 15
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 16
    :cond_6
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLastUpdateTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_7
    const/16 v0, 0x9

    .line 18
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getSerialNumber()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 19
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getWeight()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 20
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getEnable()Z

    move-result v1

    if-eqz v1, :cond_8

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_8
    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 21
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleFindUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xc

    .line 22
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 23
    :cond_9
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xd

    .line 24
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 25
    :cond_a
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v1, 0xe

    .line 26
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 27
    :cond_b
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrlNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0xf

    .line 28
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 29
    :cond_c
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0x10

    .line 30
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 31
    :cond_d
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchAuthor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x11

    .line 32
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 33
    :cond_e
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchKind()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const/16 v1, 0x12

    .line 34
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 35
    :cond_f
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchLastChapter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x13

    .line 36
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 37
    :cond_10
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchCoverUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v1, 0x14

    .line 38
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 39
    :cond_11
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchNoteUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/16 v1, 0x15

    .line 40
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 41
    :cond_12
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x16

    .line 42
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 43
    :cond_13
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookAuthor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x17

    .line 44
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 45
    :cond_14
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const/16 v1, 0x18

    .line 46
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 47
    :cond_15
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x19

    .line 48
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 49
    :cond_16
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterUrlNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const/16 v1, 0x1a

    .line 50
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :cond_17
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const/16 v1, 0x1b

    .line 52
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 53
    :cond_18
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const/16 v1, 0x1c

    .line 54
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 55
    :cond_19
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleCoverUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/16 v1, 0x1d

    .line 56
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 57
    :cond_1a
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleIntroduce()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/16 v1, 0x1e

    .line 58
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 59
    :cond_1b
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/16 v1, 0x1f

    .line 60
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :cond_1c
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/16 v1, 0x20

    .line 62
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 63
    :cond_1d
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleContentUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/16 v1, 0x21

    .line 64
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 65
    :cond_1e
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleContentUrlNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/16 v1, 0x22

    .line 66
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 67
    :cond_1f
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const/16 v1, 0x23

    .line 68
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 69
    :cond_20
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookContentDecoder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    const/16 v1, 0x24

    .line 70
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 71
    :cond_21
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getHttpUserAgent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    const/16 v1, 0x25

    .line 72
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 73
    :cond_22
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookKind()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    const/16 v1, 0x26

    .line 74
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 75
    :cond_23
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookLastChapter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    const/16 v1, 0x27

    .line 76
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 77
    :cond_24
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookUrlPattern()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const/16 v1, 0x28

    .line 78
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 79
    :cond_25
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    const/16 v1, 0x29

    .line 80
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 81
    :cond_26
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrlResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    const/16 v1, 0x2a

    .line 82
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 83
    :cond_27
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getSourceRemark()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_28

    const/16 v0, 0x2b

    .line 84
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_28
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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/dao/ComicSourceBeanDao;->else(Landroid/database/Cursor;I)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/dao/ComicSourceBeanDao;->goto(Landroid/database/Cursor;Lcom/wsw/cospa/bean/ComicSourceBean;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/dao/ComicSourceBeanDao;->this(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p2, p2, 0x3

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

.method public try(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/dao/ComicSourceBeanDao;->break(Lcom/wsw/cospa/bean/ComicSourceBean;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
