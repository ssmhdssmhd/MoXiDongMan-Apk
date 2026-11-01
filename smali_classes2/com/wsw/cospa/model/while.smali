.class public Lcom/wsw/cospa/model/while;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile if:Lcom/wsw/cospa/model/while;


# instance fields
.field private do:Lcom/wsw/cospa/model/const;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static catch()Lcom/wsw/cospa/model/while;
    .locals 2

    .line 1
    sget-object v0, Lcom/wsw/cospa/model/while;->if:Lcom/wsw/cospa/model/while;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/wsw/cospa/model/while;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/wsw/cospa/model/while;->if:Lcom/wsw/cospa/model/while;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/wsw/cospa/model/while;

    invoke-direct {v1}, Lcom/wsw/cospa/model/while;-><init>()V

    sput-object v1, Lcom/wsw/cospa/model/while;->if:Lcom/wsw/cospa/model/while;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/wsw/cospa/model/while;->if:Lcom/wsw/cospa/model/while;

    return-object v0
.end method

.method private static synthetic class(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private synthetic const(Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/util/List;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/model/while;->this(Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/util/List;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic do(Ljava/util/List;Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/model/while;->final(Ljava/util/List;Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private static synthetic final(Ljava/util/List;Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 3
    invoke-virtual {v1, v0}, Lcom/wsw/cospa/bean/ChapterListBean;->setDurChapterIndex(I)V

    .line 4
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ChapterListBean;->setTag(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ChapterListBean;->setNoteUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ChapterListBean;->setComicInfoUrl(Ljava/lang/String;)V

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 7
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/bean/ChapterListBean;->setNextChapterUrl(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setHasUpdate(Ljava/lang/Boolean;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setFinalRefreshData(Ljava/lang/Long;)V

    .line 11
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setFinalRefreshData(J)V

    .line 12
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setChapterListSize(Ljava/lang/Integer;)V

    .line 13
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapter(Ljava/lang/Integer;)V

    .line 14
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterList(Ljava/util/List;)V

    .line 15
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->upDurChapterName()V

    .line 16
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->upLastChapterName()V

    .line 17
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wsw/cospa/utils/while;->goto(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookLastChapter()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->upLastChapterName()V

    .line 20
    :cond_3
    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 21
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/model/while;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/util/List;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/model/while;->const(Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/util/List;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/while;->super(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic new(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/while;->class(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private static synthetic super(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private this(Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/util/List;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;)",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/jf2;

    invoke-direct {v0, p2, p1}, Landroid/support/v4/jf2;-><init>(Ljava/util/List;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public break(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ")",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicContentBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/model/const;->g(Ljava/lang/String;)Lcom/wsw/cospa/model/const;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/model/while;->do:Lcom/wsw/cospa/model/const;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/model/const;->getBookContent(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public case(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/new;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/wsw/cospa/model/const;->g(Ljava/lang/String;)Lcom/wsw/cospa/model/const;

    move-result-object p3

    iput-object p3, p0, Lcom/wsw/cospa/model/while;->do:Lcom/wsw/cospa/model/const;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/wsw/cospa/model/const;->findBook(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Landroid/support/v4/lf2;->do:Landroid/support/v4/lf2;

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public else(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ")",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/model/const;->g(Ljava/lang/String;)Lcom/wsw/cospa/model/const;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/model/while;->do:Lcom/wsw/cospa/model/const;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/model/const;->getBookInfo(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public goto(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ")",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/model/const;->g(Ljava/lang/String;)Lcom/wsw/cospa/model/const;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/model/while;->do:Lcom/wsw/cospa/model/const;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/model/const;->getChapterList(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/mf2;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/mf2;-><init>(Lcom/wsw/cospa/model/while;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u6ca1\u6709\u56fe\u6e90"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->error(Ljava/lang/Throwable;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public throw(Lcom/wsw/cospa/bean/ComicSourceBean;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/model/const;->g(Ljava/lang/String;)Lcom/wsw/cospa/model/const;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/model/while;->do:Lcom/wsw/cospa/model/const;

    .line 2
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/model/const;->AppSourcelogin(Lcom/wsw/cospa/bean/ComicSourceBean;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public try()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/while;->do:Lcom/wsw/cospa/model/const;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/model/const;->f()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/model/while;->do:Lcom/wsw/cospa/model/const;

    :cond_0
    return-void
.end method

.method public while(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/new;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/wsw/cospa/model/const;->g(Ljava/lang/String;)Lcom/wsw/cospa/model/const;

    move-result-object p3

    iput-object p3, p0, Lcom/wsw/cospa/model/while;->do:Lcom/wsw/cospa/model/const;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/wsw/cospa/model/const;->searchBook(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Landroid/support/v4/kf2;->do:Landroid/support/v4/kf2;

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method
