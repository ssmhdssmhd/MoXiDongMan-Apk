.class public Lcom/wsw/cospa/dao/for;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/dao/for$do;,
        Lcom/wsw/cospa/dao/for$if;
    }
.end annotation


# static fields
.field public static final do:I = 0x34


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/wsw/cospa/dao/for;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1

    const/16 v0, 0x34

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    .line 3
    const-class p1, Lcom/wsw/cospa/dao/ChapterListBeanDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 4
    const-class p1, Lcom/wsw/cospa/dao/ComicContentBeanDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 5
    const-class p1, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 6
    const-class p1, Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 7
    const-class p1, Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 8
    const-class p1, Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 9
    const-class p1, Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 10
    const-class p1, Lcom/wsw/cospa/dao/CookieBeanDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 11
    const-class p1, Lcom/wsw/cospa/dao/HistoryComicBeanDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 12
    const-class p1, Lcom/wsw/cospa/dao/RipeFileDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 13
    const-class p1, Lcom/wsw/cospa/dao/SearchComicBeanDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 14
    const-class p1, Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static do(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ChapterListBeanDao;->for(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 2
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ComicContentBeanDao;->for(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 3
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;->for(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 4
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ComicInfoBeanDao;->for(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 5
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ComicShelfBeanDao;->new(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 6
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;->for(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 7
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ComicSourceBeanDao;->for(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 8
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/CookieBeanDao;->for(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 9
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/HistoryComicBeanDao;->for(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 10
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/RipeFileDao;->for(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 11
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/SearchComicBeanDao;->for(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 12
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/TaskDao;->for(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static for(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/hw;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/dao/for$do;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/dao/for$do;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p0

    .line 2
    new-instance p1, Lcom/wsw/cospa/dao/for;

    invoke-direct {p1, p0}, Lcom/wsw/cospa/dao/for;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/dao/for;->new()Landroid/support/v4/hw;

    move-result-object p0

    return-object p0
.end method

.method public static if(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ChapterListBeanDao;->new(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 2
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ComicContentBeanDao;->new(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 3
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;->new(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 4
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ComicInfoBeanDao;->new(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 5
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ComicShelfBeanDao;->try(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 6
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;->new(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 7
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/ComicSourceBeanDao;->new(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 8
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/CookieBeanDao;->new(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 9
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/HistoryComicBeanDao;->new(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 10
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/RipeFileDao;->new(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 11
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/SearchComicBeanDao;->new(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 12
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/TaskDao;->new(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method


# virtual methods
.method public new()Landroid/support/v4/hw;
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/hw;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/hw;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/dao/for;->new()Landroid/support/v4/hw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/dao/for;->try(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Landroid/support/v4/hw;

    move-result-object p1

    return-object p1
.end method

.method public try(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Landroid/support/v4/hw;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/hw;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Landroid/support/v4/hw;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method
