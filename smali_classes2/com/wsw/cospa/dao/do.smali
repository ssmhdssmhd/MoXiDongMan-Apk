.class public Lcom/wsw/cospa/dao/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static do:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^(.*?\u7b2c([\\d\u96f6\u3007\u4e00\u4e8c\u4e24\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u767e\u5343\u4e07\uff10-\uff19\\s]+)[\u7ae0\u8282\u7bc7\u56de\u96c6])[\u3001\uff0c\u3002\u3000\uff1a:.\\s]*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/dao/do;->do:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getFinalRefreshData()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getFinalRefreshData()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getFinalRefreshData()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getFinalRefreshData()J

    move-result-wide p0

    sub-long/2addr v0, p0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static abstract(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/ComicSourceBean;

    return-object p0
.end method

.method private static synthetic b(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getSerialNumber()I

    move-result p0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getSerialNumber()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic break(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/dao/do;->protected(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private static synthetic c(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 5

    if-eqz p0, :cond_5

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getDownload()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/model/throw;->else()Lcom/wsw/cospa/model/throw;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/model/throw;->new(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 9
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 16
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 18
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->for()Lcom/wsw/cospa/dao/ComicContentBeanDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInTx(Ljava/lang/Iterable;)V

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 21
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    :cond_5
    return-void
.end method

.method public static synthetic case(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/dao/do;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic catch(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/do;->b(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)I

    move-result p0

    return p0
.end method

.method public static synthetic class(JLio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/dao/do;->transient(JLio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static const(Lcom/wsw/cospa/bean/ComicShelfGroupBean;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hw;->else()Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    move-result-object p1

    new-array v1, v1, [Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    aput-object p0, v1, v0

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hw;->else()Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    move-result-object p1

    new-array v1, v1, [Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    aput-object p0, v1, v0

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static continue(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)I
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v2

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ChapterListBean;->getChapterNum()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ChapterListBean;->getPureChapterName()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v0, v2, v0

    add-int/2addr v0, v4

    .line 6
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    .line 7
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/16 v7, 0x0

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    new-instance v4, Landroid/support/v4/i22;

    new-instance v9, Landroid/support/v4/dp0;

    invoke-direct {v9}, Landroid/support/v4/dp0;-><init>()V

    invoke-direct {v4, v9}, Landroid/support/v4/i22;-><init>(Lnet/ricecode/similarity/SimilarityStrategy;)V

    move v9, v5

    const/4 v10, 0x0

    :goto_0
    if-gt v9, v0, :cond_3

    .line 10
    invoke-virtual {p1, v9}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/wsw/cospa/bean/ChapterListBean;->getPureChapterName()Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-interface {v4, p0, v11}, Lnet/ricecode/similarity/StringSimilarityService;->score(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v11

    cmpl-double v13, v11, v7

    if-lez v13, :cond_1

    move v10, v9

    move-wide v7, v11

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :cond_3
    const-wide v11, 0x3feeb851eb851eb8L    # 0.96

    cmpg-double p0, v7, v11

    if-gez p0, :cond_6

    if-lez v3, :cond_6

    const/4 p0, 0x0

    :goto_1
    if-gt v5, v0, :cond_7

    .line 12
    invoke-virtual {p1, v5}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ChapterListBean;->getChapterNum()I

    move-result v4

    if-ne v4, v3, :cond_4

    move p0, v4

    move v10, v5

    goto :goto_2

    :cond_4
    sub-int v9, v4, v3

    .line 13
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v13, p0, v3

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-ge v9, v13, :cond_5

    move p0, v4

    move v10, v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :cond_7
    :goto_2
    cmpl-double v0, v7, v11

    if-gtz v0, :cond_9

    sub-int/2addr p0, v3

    .line 14
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v6, :cond_8

    goto :goto_3

    .line 15
    :cond_8
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, v6

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_9
    :goto_3
    return v10
.end method

.method private static synthetic d(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5220\u9664\u6f2b\u753b\u5931\u8d25\uff01----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public static default(JI)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/pb;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/pb;-><init>(JI)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/do;->synchronized(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)I

    move-result p0

    return p0
.end method

.method private static synthetic e(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v2

    new-array v4, v1, [Lcom/wsw/cospa/bean/ComicInfoBean;

    aput-object v0, v4, v3

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/dao/DatabaseHelper;->protected(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v2

    new-array v4, v1, [Lcom/wsw/cospa/bean/ComicInfoBean;

    aput-object v0, v4, v3

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    .line 10
    :goto_0
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v0

    new-array v1, v1, [Lcom/wsw/cospa/bean/ComicShelfBean;

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static synthetic else(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/do;->instanceof(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static extends(Ljava/lang/String;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/qb;

    invoke-direct {v0, p0}, Landroid/support/v4/qb;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ComicShelfBean;

    const-wide/16 v5, 0x1

    .line 5
    invoke-virtual {v3, v5, v6}, Lcom/wsw/cospa/bean/ComicShelfBean;->setGroupId(J)V

    .line 6
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v5

    new-array v6, v1, [Lcom/wsw/cospa/bean/ComicShelfBean;

    aput-object v3, v6, v4

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx([Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/ComicInfoBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildCount()Lorg/greenrobot/greendao/query/CountQuery;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/CountQuery;->count()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static finally(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 6

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->do()V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 3
    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/wsw/cospa/dao/ComicInfoBeanDao$Properties;->for:Lorg/greenrobot/greendao/Property;

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicInfoBean;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v5, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v2, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    aput-object v4, v2, v1

    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 10
    :cond_0
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterList(Ljava/util/List;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setComicInfoBean(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    :cond_1
    return-object p0
.end method

.method public static synthetic for(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/dao/do;->c(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method private static synthetic g(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setGroupId(J)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setGroupBean(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/wsw/cospa/bean/ComicShelfBean;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    .line 4
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx([Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic goto(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/dao/do;->e(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method public static h()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfGroupBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->else()Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static i(Lcom/wsw/cospa/bean/ComicShelfBean;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getGroupId()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p0

    invoke-virtual {p0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/hw;->else()Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/do;->a(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)I

    move-result p0

    return p0
.end method

.method private static synthetic implements(JILio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_1

    if-ne p2, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object v2, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->while:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    new-array p1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, p0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    new-array p1, v0, [Lorg/greenrobot/greendao/Property;

    sget-object p2, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    aput-object p2, p1, v1

    .line 3
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object v2, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->while:Lorg/greenrobot/greendao/Property;

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    new-array p1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, p0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    new-array p1, v0, [Lorg/greenrobot/greendao/Property;

    sget-object p2, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->goto:Lorg/greenrobot/greendao/Property;

    aput-object p2, p1, v1

    .line 6
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p0

    invoke-virtual {p0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    sget-object p1, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->while:Lorg/greenrobot/greendao/Property;

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array p2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    new-array p1, v0, [Lorg/greenrobot/greendao/Property;

    sget-object p2, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    aput-object p2, p1, v1

    .line 9
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    .line 10
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 11
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object v2, Lcom/wsw/cospa/dao/ComicInfoBeanDao$Properties;->for:Lorg/greenrobot/greendao/Property;

    .line 12
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 14
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 15
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 16
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v3, v0, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 18
    invoke-virtual {p2, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterList(Ljava/util/List;)V

    .line 19
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v2, p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setComicInfoBean(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    goto :goto_2

    .line 20
    :cond_3
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object p2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p2, v2}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    .line 21
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    :goto_2
    add-int/2addr p1, v0

    goto/16 :goto_1

    .line 22
    :cond_4
    invoke-interface {p3, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 23
    invoke-interface {p3}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static import()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->else()Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    return-void
.end method

.method private static synthetic instanceof(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->do()V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 3
    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/ComicShelfBean;

    const-string v0, "\u6ca1\u6709\u672c\u5730\u8bb0\u5f55"

    if-eqz p0, :cond_2

    .line 4
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/wsw/cospa/dao/ComicInfoBeanDao$Properties;->for:Lorg/greenrobot/greendao/Property;

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicInfoBean;

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v4, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v5, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 10
    :cond_0
    invoke-virtual {v2, v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterList(Ljava/util/List;)V

    .line 11
    invoke-virtual {p0, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setComicInfoBean(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    .line 12
    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 13
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static interface(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-virtual {v2, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    new-array v2, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static j(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 3
    :pswitch_3
    sget-object p1, Landroid/support/v4/ob;->do:Landroid/support/v4/ob;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 4
    :pswitch_4
    sget-object p1, Landroid/support/v4/nb;->do:Landroid/support/v4/nb;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 5
    :pswitch_5
    sget-object p1, Landroid/support/v4/xb;->do:Landroid/support/v4/xb;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static k(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    new-instance v1, Landroid/support/v4/sb;

    invoke-direct {v1, p0}, Landroid/support/v4/sb;-><init>(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Landroid/support/v4/vb;

    invoke-direct {v0, p0}, Landroid/support/v4/vb;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static l(Lcom/wsw/cospa/bean/ComicShelfBean;Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInTx([Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInTx([Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wsw/cospa/dao/do;->while(Ljava/lang/String;)V

    return-void
.end method

.method public static m(Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_0
    return-void
.end method

.method public static n(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    new-instance v1, Landroid/support/v4/tb;

    invoke-direct {v1, p0}, Landroid/support/v4/tb;-><init>(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native(Ljava/lang/Long;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->else()Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/do;->g(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    return-void
.end method

.method public static o(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/ComicInfoBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/greenrobot/greendao/Property;

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static p()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    sget-object v1, Landroid/support/v4/wb;->do:Landroid/support/v4/wb;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static package(Lcom/wsw/cospa/bean/SearchComicBean;)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setTag(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setNoteUrl(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setFinalDate(Ljava/lang/Long;)V

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setLastChapterName(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapter(Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterPage(Ljava/lang/Integer;)V

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getVariable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setVariable(Ljava/lang/String;)V

    .line 9
    new-instance v1, Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-direct {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setNoteUrl(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setAuthor(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setCoverUrl(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setTag(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setOrigin(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getIntroduce()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/wsw/cospa/bean/ComicInfoBean;->setIntroduce(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setComicInfoBean(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    return-object v0
.end method

.method public static private(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic protected(Lio/reactivex/ObservableEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v5, Lcom/wsw/cospa/dao/ComicInfoBeanDao$Properties;->for:Lorg/greenrobot/greendao/Property;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v6, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 7
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 8
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v7}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v7, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v5, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    new-array v6, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    aput-object v7, v6, v4

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 11
    invoke-virtual {v3, v5}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterList(Ljava/util/List;)V

    .line 12
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v5, v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->setComicInfoBean(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :goto_1
    add-int/2addr v2, v1

    goto/16 :goto_0

    .line 15
    :cond_2
    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 16
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static public(Ljava/lang/Long;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->else()Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    return-object p0
.end method

.method public static q(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    new-instance v1, Landroid/support/v4/ub;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/ub;-><init>(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static r(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/case;->this()Lcom/wsw/cospa/utils/case;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/case;->else()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/dao/do$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/dao/do$do;-><init>(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static return(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicInfoBean;
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/ComicInfoBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/ComicInfoBean;

    return-object p0
.end method

.method public static static()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 6
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/wsw/cospa/dao/ComicInfoBeanDao$Properties;->for:Lorg/greenrobot/greendao/Property;

    .line 7
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v7, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v5, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 9
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 10
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 11
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    new-array v7, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    aput-object v8, v7, v4

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v6

    .line 12
    invoke-virtual {v5, v6}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterList(Ljava/util/List;)V

    .line 13
    invoke-virtual {v3, v5}, Lcom/wsw/cospa/bean/ComicShelfBean;->setComicInfoBean(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method public static strictfp(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    const-string v0, "\u7b2c.*?\u5377.*?\u7b2c.*[\u7ae0\u8282\u56de]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/wsw/cospa/dao/do;->do:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/l22;->extends(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static super(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 6
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v5, Lcom/wsw/cospa/dao/ComicInfoBeanDao$Properties;->for:Lorg/greenrobot/greendao/Property;

    .line 7
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v6, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 9
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 10
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 11
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v6, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v5, v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v5, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-virtual {v3, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterList(Ljava/util/List;)V

    .line 13
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 14
    :cond_1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_2
    return v4
.end method

.method public static switch()Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/rb;->do:Landroid/support/v4/rb;

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic synchronized(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getFinalDate()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getFinalDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getFinalDate()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getFinalDate()J

    move-result-wide p0

    sub-long/2addr v0, p0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic this()V
    .locals 0

    invoke-static {}, Lcom/wsw/cospa/dao/do;->f()V

    return-void
.end method

.method public static throw()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 3
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 4
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->for()Lcom/wsw/cospa/dao/ComicContentBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 5
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->new()Lcom/wsw/cospa/dao/ComicContentImgBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    return-void
.end method

.method public static throws(J)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/mb;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/mb;-><init>(J)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic transient(JLio/reactivex/ObservableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_0

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->while:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    new-array p1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, p0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    new-array p1, v0, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    aput-object v2, p1, v1

    .line 3
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p0

    invoke-virtual {p0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    new-array p1, v0, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    aput-object v2, p1, v1

    .line 5
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    .line 6
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 7
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/wsw/cospa/dao/ComicInfoBeanDao$Properties;->for:Lorg/greenrobot/greendao/Property;

    .line 8
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 10
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 11
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 12
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v5, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v4, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v4, v0, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 14
    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterList(Ljava/util/List;)V

    .line 15
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v3, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setComicInfoBean(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    goto :goto_2

    .line 16
    :cond_2
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    .line 17
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    :goto_2
    add-int/2addr p1, v0

    goto/16 :goto_1

    .line 18
    :cond_3
    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 19
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static synthetic try(JILio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/wsw/cospa/dao/do;->implements(JILio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static volatile(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->else()Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    return-void
.end method

.method public static while(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/ChapterListBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    return-void
.end method
