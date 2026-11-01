.class public Lcom/wsw/cospa/web/controller/BookshelfController;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookContent(Ljava/util/Map;)Lcom/wsw/cospa/web/utils/ReturnData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/wsw/cospa/web/utils/ReturnData;"
        }
    .end annotation

    const-string v0, "url"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2
    new-instance v0, Lcom/wsw/cospa/web/utils/ReturnData;

    invoke-direct {v0}, Lcom/wsw/cospa/web/utils/ReturnData;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "\u53c2\u6570url\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u6307\u5b9a\u5185\u5bb9\u5730\u5740"

    .line 3
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/web/utils/ReturnData;->setErrorMsg(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ChapterListBean;

    const-string v1, "\u672a\u627e\u5230"

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/web/utils/ReturnData;->setErrorMsg(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wsw/cospa/dao/do;->finally(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v2

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/web/utils/ReturnData;->setErrorMsg(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/model/while;->break(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/new;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicContentBean;

    .line 9
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentBean;->getDurContentUrl()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/web/utils/ReturnData;->setData(Ljava/lang/Object;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/web/utils/ReturnData;->setErrorMsg(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1
.end method

.method public getBookshelf()Lcom/wsw/cospa/web/utils/ReturnData;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/do;->static()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/wsw/cospa/web/utils/ReturnData;

    invoke-direct {v1}, Lcom/wsw/cospa/web/utils/ReturnData;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "\u8fd8\u6ca1\u6709\u6dfb\u52a0\u6f2b\u753b"

    .line 4
    invoke-virtual {v1, v0}, Lcom/wsw/cospa/web/utils/ReturnData;->setErrorMsg(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v1, v0}, Lcom/wsw/cospa/web/utils/ReturnData;->setData(Ljava/lang/Object;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v0

    return-object v0
.end method

.method public getChapterList(Ljava/util/Map;)Lcom/wsw/cospa/web/utils/ReturnData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/wsw/cospa/web/utils/ReturnData;"
        }
    .end annotation

    const-string v0, "url"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2
    new-instance v0, Lcom/wsw/cospa/web/utils/ReturnData;

    invoke-direct {v0}, Lcom/wsw/cospa/web/utils/ReturnData;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "\u53c2\u6570url\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u6307\u5b9a\u4e66\u7c4d\u5730\u5740"

    .line 3
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/web/utils/ReturnData;->setErrorMsg(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->private(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/web/utils/ReturnData;->setData(Ljava/lang/Object;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1
.end method

.method public saveBook(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;
    .locals 2

    .line 1
    const-class v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {p1, v0}, Landroid/support/v4/hi0;->if(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 2
    new-instance v0, Lcom/wsw/cospa/web/utils/ReturnData;

    invoke-direct {v0}, Lcom/wsw/cospa/web/utils/ReturnData;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    const-string p1, ""

    .line 4
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/web/utils/ReturnData;->setData(Ljava/lang/Object;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "\u683c\u5f0f\u4e0d\u5bf9"

    .line 5
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/web/utils/ReturnData;->setErrorMsg(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1
.end method
