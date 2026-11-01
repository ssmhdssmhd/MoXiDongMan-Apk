.class public Lcom/wsw/cospa/model/try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/model/try$if;
    }
.end annotation


# static fields
.field private static new:Ljava/lang/String;

.field private static try:Lcom/wsw/cospa/model/try;


# instance fields
.field private do:Lcom/wsw/cospa/bean/ComicSourceBean;

.field private for:Ljava/lang/String;

.field private if:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/model/try;->for:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/model/try;->for:Ljava/lang/String;

    .line 5
    sput-object p1, Lcom/wsw/cospa/model/try;->new:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/wsw/cospa/model/try;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 7
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/model/try;->if:Ljava/lang/String;

    .line 8
    invoke-static {p1, p2}, Lcom/wsw/cospa/utils/for;->for(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/model/try;->if:Ljava/lang/String;

    const-string p2, "$"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "@js:html=result;JsEngine=java;window=JsEngine;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/wsw/cospa/model/try;->if:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";getImgList()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/model/try;->if:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static case(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)Lcom/wsw/cospa/model/try;
    .locals 2

    .line 1
    sget-object v0, Lcom/wsw/cospa/model/try;->try:Lcom/wsw/cospa/model/try;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/wsw/cospa/model/try;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/wsw/cospa/model/try;->try:Lcom/wsw/cospa/model/try;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/wsw/cospa/model/try;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/model/try;-><init>(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    sput-object v1, Lcom/wsw/cospa/model/try;->try:Lcom/wsw/cospa/model/try;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    sget-object v0, Lcom/wsw/cospa/model/try;->new:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lcom/wsw/cospa/model/try;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/model/try;-><init>(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    sput-object v0, Lcom/wsw/cospa/model/try;->try:Lcom/wsw/cospa/model/try;

    .line 8
    :cond_2
    :goto_0
    sget-object p0, Lcom/wsw/cospa/model/try;->try:Lcom/wsw/cospa/model/try;

    return-object p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/try;Ljava/lang/String;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;Ljava/util/Map;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/model/try;->else(Ljava/lang/String;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;Ljava/util/Map;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private synthetic else(Ljava/lang/String;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;Ljava/util/Map;Lio/reactivex/ObservableEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "\u6f2b\u753b\u83b7\u53d6\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p1}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    .line 3
    invoke-interface {p5}, Lio/reactivex/Emitter;->onComplete()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/wsw/cospa/bean/ComicContentBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicContentBean;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicContentBean;->setDurChapterIndex(I)V

    .line 6
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicContentBean;->setDurChapterUrl(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/wsw/cospa/model/try;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicContentBean;->setTag(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getVariable()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p3, p1, v2, v1}, Lcom/wsw/cospa/model/try;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/model/try$if;

    move-result-object p1

    .line 10
    iget-object p3, p0, Lcom/wsw/cospa/model/try;->for:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/wsw/cospa/model/try;->for:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/wsw/cospa/model/try;->for:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 11
    iget-object p3, p0, Lcom/wsw/cospa/model/try;->for:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/wsw/cospa/bean/ChapterListBean;->setVariable(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p3

    invoke-virtual {p3}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/hw;->if()Lcom/wsw/cospa/dao/ChapterListBeanDao;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 13
    iget-object v1, p0, Lcom/wsw/cospa/model/try;->for:Ljava/lang/String;

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/wsw/cospa/model/try$if;->do(Lcom/wsw/cospa/model/try$if;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/wsw/cospa/model/try;->new(Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-static {p1}, Lcom/wsw/cospa/model/try$if;->for(Lcom/wsw/cospa/model/try$if;)Ljava/util/List;

    move-result-object v2

    .line 16
    invoke-static {p1}, Lcom/wsw/cospa/model/try$if;->try(Lcom/wsw/cospa/model/try$if;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getNextChapterUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    :goto_0
    invoke-static {p1}, Lcom/wsw/cospa/model/try$if;->try(Lcom/wsw/cospa/model/try$if;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p1}, Lcom/wsw/cospa/model/try$if;->try(Lcom/wsw/cospa/model/try$if;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 21
    invoke-static {p1}, Lcom/wsw/cospa/model/try$if;->try(Lcom/wsw/cospa/model/try$if;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {p1}, Lcom/wsw/cospa/model/try$if;->try(Lcom/wsw/cospa/model/try$if;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getNextChapterUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    new-instance v4, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-static {p1}, Lcom/wsw/cospa/model/try$if;->try(Lcom/wsw/cospa/model/try$if;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v6, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    invoke-static {}, Lcom/wsw/cospa/model/impl/if;->break()Lcom/wsw/cospa/model/impl/if;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/wsw/cospa/model/impl/if;->catch(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;)Lio/reactivex/new;

    move-result-object v4

    invoke-virtual {v4}, Lio/reactivex/new;->blockingFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lretrofit2/Response;

    .line 25
    invoke-virtual {v4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 26
    invoke-virtual {v4}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v4

    .line 27
    new-instance v6, Lcom/google/gson/GsonBuilder;

    invoke-direct {v6}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 28
    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v6

    .line 29
    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v6

    .line 30
    invoke-virtual {v6, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-static {p1}, Lcom/wsw/cospa/model/try$if;->try(Lcom/wsw/cospa/model/try$if;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getVariable()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, p1, v6}, Lcom/wsw/cospa/model/try;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/model/try$if;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    :try_start_2
    invoke-static {p1}, Lcom/wsw/cospa/model/try$if;->for(Lcom/wsw/cospa/model/try$if;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 33
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p4

    if-ge p1, p4, :cond_4

    .line 34
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/wsw/cospa/bean/ComicContentImgBean;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p4, v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setIndexPape(I)V

    .line 35
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p4, v4}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setMaxPage(I)V

    .line 36
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setChapterContentUrl(Ljava/lang/String;)V

    .line 37
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result v4

    invoke-virtual {p4, v4}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setChapterIndex(I)V

    .line 38
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setChapterText(Ljava/lang/String;)V

    .line 39
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p4, p3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setVariable(Ljava/lang/String;)V

    .line 40
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setCustomVariable(Ljava/lang/String;)V

    move p1, v3

    goto :goto_2

    .line 41
    :cond_4
    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/ComicContentBean;->setDurContentUrl(Ljava/util/List;)V

    .line 42
    invoke-interface {p5, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 43
    invoke-interface {p5}, Lio/reactivex/Emitter;->onComplete()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/model/try$if;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/model/try$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/model/try$if;-><init>(Lcom/wsw/cospa/model/try;Lcom/wsw/cospa/model/try$do;)V

    .line 2
    new-instance v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-direct {v1, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ruleBookContent"

    .line 4
    invoke-virtual {v1, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setBookContentVariable(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/model/try;->if:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {v1, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getStringList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-virtual {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getBookContentVariable()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/wsw/cospa/model/try$if;->if(Lcom/wsw/cospa/model/try$if;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 9
    new-instance v2, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-direct {v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;-><init>()V

    .line 10
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setImgurl(Ljava/lang/String;)V

    .line 11
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0, p3}, Lcom/wsw/cospa/model/try$if;->new(Lcom/wsw/cospa/model/try$if;Ljava/util/List;)Ljava/util/List;

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/model/try;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleContentUrlNext()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/model/try;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleContentUrlNext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wsw/cospa/model/try$if;->case(Lcom/wsw/cospa/model/try$if;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getVariable()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/model/try;->for:Ljava/lang/String;

    return-object v0
.end method

.method private new(Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "ruleBookContent"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p2, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->covertMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public for(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/util/Map;)Lio/reactivex/new;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicContentBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Landroid/support/v4/zm;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/zm;-><init>(Lcom/wsw/cospa/model/try;Ljava/lang/String;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v6}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public try()V
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/model/try;->try:Lcom/wsw/cospa/model/try;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/wsw/cospa/model/try;->try:Lcom/wsw/cospa/model/try;

    :cond_0
    return-void
.end method
