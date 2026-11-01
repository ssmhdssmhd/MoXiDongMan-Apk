.class public Landroid/support/v4/hw;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "SourceFile"


# instance fields
.field private final break:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final case:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final catch:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final class:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final const:Lcom/wsw/cospa/dao/ChapterListBeanDao;

.field private final do:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final else:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final final:Lcom/wsw/cospa/dao/ComicContentBeanDao;

.field private final for:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final goto:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final if:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final import:Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

.field private final native:Lcom/wsw/cospa/dao/ComicSourceBeanDao;

.field private final new:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final public:Lcom/wsw/cospa/dao/CookieBeanDao;

.field private final return:Lcom/wsw/cospa/dao/HistoryComicBeanDao;

.field private final static:Lcom/wsw/cospa/dao/RipeFileDao;

.field private final super:Lcom/wsw/cospa/dao/ComicContentImgBeanDao;

.field private final switch:Lcom/wsw/cospa/dao/SearchComicBeanDao;

.field private final this:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final throw:Lcom/wsw/cospa/dao/ComicInfoBeanDao;

.field private final throws:Lcom/wsw/cospa/dao/TaskDao;

.field private final try:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final while:Lcom/wsw/cospa/dao/ComicShelfBeanDao;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 2
    const-class p1, Lcom/wsw/cospa/dao/ChapterListBeanDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/hw;->do:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 4
    const-class v0, Lcom/wsw/cospa/dao/ComicContentBeanDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/hw;->if:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 5
    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 6
    const-class v1, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/hw;->for:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 7
    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 8
    const-class v2, Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/hw;->new:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 9
    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 10
    const-class v3, Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/hw;->try:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 11
    invoke-virtual {v3, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 12
    const-class v4, Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/hw;->case:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 13
    invoke-virtual {v4, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 14
    const-class v5, Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v5}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/hw;->else:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 15
    invoke-virtual {v5, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 16
    const-class v6, Lcom/wsw/cospa/dao/CookieBeanDao;

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v6}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v4/hw;->goto:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 17
    invoke-virtual {v6, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 18
    const-class v7, Lcom/wsw/cospa/dao/HistoryComicBeanDao;

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v7}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v4/hw;->this:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 19
    invoke-virtual {v7, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 20
    const-class v8, Lcom/wsw/cospa/dao/RipeFileDao;

    invoke-interface {p3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v8}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v4/hw;->break:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 21
    invoke-virtual {v8, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 22
    const-class v9, Lcom/wsw/cospa/dao/SearchComicBeanDao;

    invoke-interface {p3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v9}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v9

    iput-object v9, p0, Landroid/support/v4/hw;->catch:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 23
    invoke-virtual {v9, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 24
    const-class v10, Lcom/wsw/cospa/dao/TaskDao;

    invoke-interface {p3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p3}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v4/hw;->class:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 25
    invoke-virtual {p3, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 26
    new-instance p2, Lcom/wsw/cospa/dao/ChapterListBeanDao;

    invoke-direct {p2, p1, p0}, Lcom/wsw/cospa/dao/ChapterListBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V

    iput-object p2, p0, Landroid/support/v4/hw;->const:Lcom/wsw/cospa/dao/ChapterListBeanDao;

    .line 27
    new-instance p1, Lcom/wsw/cospa/dao/ComicContentBeanDao;

    invoke-direct {p1, v0, p0}, Lcom/wsw/cospa/dao/ComicContentBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V

    iput-object p1, p0, Landroid/support/v4/hw;->final:Lcom/wsw/cospa/dao/ComicContentBeanDao;

    .line 28
    new-instance v0, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;

    invoke-direct {v0, v1, p0}, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V

    iput-object v0, p0, Landroid/support/v4/hw;->super:Lcom/wsw/cospa/dao/ComicContentImgBeanDao;

    .line 29
    new-instance v1, Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    invoke-direct {v1, v2, p0}, Lcom/wsw/cospa/dao/ComicInfoBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V

    iput-object v1, p0, Landroid/support/v4/hw;->throw:Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    .line 30
    new-instance v2, Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    invoke-direct {v2, v3, p0}, Lcom/wsw/cospa/dao/ComicShelfBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V

    iput-object v2, p0, Landroid/support/v4/hw;->while:Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    .line 31
    new-instance v3, Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    invoke-direct {v3, v4, p0}, Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V

    iput-object v3, p0, Landroid/support/v4/hw;->import:Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    .line 32
    new-instance v4, Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    invoke-direct {v4, v5, p0}, Lcom/wsw/cospa/dao/ComicSourceBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V

    iput-object v4, p0, Landroid/support/v4/hw;->native:Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    .line 33
    new-instance v5, Lcom/wsw/cospa/dao/CookieBeanDao;

    invoke-direct {v5, v6, p0}, Lcom/wsw/cospa/dao/CookieBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V

    iput-object v5, p0, Landroid/support/v4/hw;->public:Lcom/wsw/cospa/dao/CookieBeanDao;

    .line 34
    new-instance v6, Lcom/wsw/cospa/dao/HistoryComicBeanDao;

    invoke-direct {v6, v7, p0}, Lcom/wsw/cospa/dao/HistoryComicBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V

    iput-object v6, p0, Landroid/support/v4/hw;->return:Lcom/wsw/cospa/dao/HistoryComicBeanDao;

    .line 35
    new-instance v7, Lcom/wsw/cospa/dao/RipeFileDao;

    invoke-direct {v7, v8, p0}, Lcom/wsw/cospa/dao/RipeFileDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V

    iput-object v7, p0, Landroid/support/v4/hw;->static:Lcom/wsw/cospa/dao/RipeFileDao;

    .line 36
    new-instance v8, Lcom/wsw/cospa/dao/SearchComicBeanDao;

    invoke-direct {v8, v9, p0}, Lcom/wsw/cospa/dao/SearchComicBeanDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V

    iput-object v8, p0, Landroid/support/v4/hw;->switch:Lcom/wsw/cospa/dao/SearchComicBeanDao;

    .line 37
    new-instance v9, Lcom/wsw/cospa/dao/TaskDao;

    invoke-direct {v9, p3, p0}, Lcom/wsw/cospa/dao/TaskDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V

    iput-object v9, p0, Landroid/support/v4/hw;->throws:Lcom/wsw/cospa/dao/TaskDao;

    .line 38
    const-class p3, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p0, p3, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 39
    const-class p2, Lcom/wsw/cospa/bean/ComicContentBean;

    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 40
    const-class p1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 41
    const-class p1, Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p0, p1, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 42
    const-class p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1, v2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 43
    const-class p1, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {p0, p1, v3}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 44
    const-class p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p0, p1, v4}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 45
    const-class p1, Lcom/wsw/cospa/bean/CookieBean;

    invoke-virtual {p0, p1, v5}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 46
    const-class p1, Lcom/wsw/cospa/bean/HistoryComicBean;

    invoke-virtual {p0, p1, v6}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 47
    const-class p1, Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p0, p1, v7}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 48
    const-class p1, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {p0, p1, v8}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 49
    const-class p1, Lcom/wsw/cospa/bean/Task;

    invoke-virtual {p0, p1, v9}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public break()Lcom/wsw/cospa/dao/HistoryComicBeanDao;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->return:Lcom/wsw/cospa/dao/HistoryComicBeanDao;

    return-object v0
.end method

.method public case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->while:Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    return-object v0
.end method

.method public catch()Lcom/wsw/cospa/dao/RipeFileDao;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->static:Lcom/wsw/cospa/dao/RipeFileDao;

    return-object v0
.end method

.method public class()Lcom/wsw/cospa/dao/SearchComicBeanDao;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->switch:Lcom/wsw/cospa/dao/SearchComicBeanDao;

    return-object v0
.end method

.method public const()Lcom/wsw/cospa/dao/TaskDao;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->throws:Lcom/wsw/cospa/dao/TaskDao;

    return-object v0
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->do:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/hw;->if:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/hw;->for:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 4
    iget-object v0, p0, Landroid/support/v4/hw;->new:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 5
    iget-object v0, p0, Landroid/support/v4/hw;->try:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 6
    iget-object v0, p0, Landroid/support/v4/hw;->case:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 7
    iget-object v0, p0, Landroid/support/v4/hw;->else:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 8
    iget-object v0, p0, Landroid/support/v4/hw;->goto:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 9
    iget-object v0, p0, Landroid/support/v4/hw;->this:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 10
    iget-object v0, p0, Landroid/support/v4/hw;->break:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 11
    iget-object v0, p0, Landroid/support/v4/hw;->catch:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 12
    iget-object v0, p0, Landroid/support/v4/hw;->class:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public else()Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->import:Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    return-object v0
.end method

.method public for()Lcom/wsw/cospa/dao/ComicContentBeanDao;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->final:Lcom/wsw/cospa/dao/ComicContentBeanDao;

    return-object v0
.end method

.method public goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->native:Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    return-object v0
.end method

.method public if()Lcom/wsw/cospa/dao/ChapterListBeanDao;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->const:Lcom/wsw/cospa/dao/ChapterListBeanDao;

    return-object v0
.end method

.method public new()Lcom/wsw/cospa/dao/ComicContentImgBeanDao;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->super:Lcom/wsw/cospa/dao/ComicContentImgBeanDao;

    return-object v0
.end method

.method public this()Lcom/wsw/cospa/dao/CookieBeanDao;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->public:Lcom/wsw/cospa/dao/CookieBeanDao;

    return-object v0
.end method

.method public try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/hw;->throw:Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    return-object v0
.end method
