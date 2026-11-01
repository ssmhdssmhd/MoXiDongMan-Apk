.class Lcom/wsw/cospa/model/new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/model/new$if;
    }
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field private for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

.field private if:Lcom/wsw/cospa/bean/ComicSourceBean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/model/new;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/model/new;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/new;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/String;Ljava/util/Map;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/model/new;->new(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/String;Ljava/util/Map;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/model/new$if;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/wsw/cospa/model/new$if<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-virtual {v2, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/model/new;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterUrlNext()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    iget-object v1, p0, Lcom/wsw/cospa/model/new;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterUrlNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getStringList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    .line 7
    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-virtual {p2, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 10
    iget-object v3, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-virtual {v3, p1, p3, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p3, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    iget-object p4, p0, Lcom/wsw/cospa/model/new;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p4}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentId()Ljava/lang/String;

    move-result-object p4

    const/4 v3, 0x0

    invoke-virtual {p3, p4, v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 12
    iget-object p4, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    iget-object v4, p0, Lcom/wsw/cospa/model/new;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4, v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p4

    .line 13
    iget-object v4, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    iget-object v5, p0, Lcom/wsw/cospa/model/new;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 14
    iget-object v5, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    iget-object v6, p0, Lcom/wsw/cospa/model/new;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleContentUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 15
    iget-object v6, p0, Lcom/wsw/cospa/model/new;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 16
    iget-object v6, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    iget-object v7, p0, Lcom/wsw/cospa/model/new;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v7}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, ""

    .line 17
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 18
    new-instance v6, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-direct {v6}, Lcom/wsw/cospa/bean/ChapterListBean;-><init>()V

    .line 19
    iget-object v7, p0, Lcom/wsw/cospa/model/new;->do:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/wsw/cospa/bean/ChapterListBean;->setTag(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v6, p3}, Lcom/wsw/cospa/bean/ChapterListBean;->setParentIdString(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v6, p4}, Lcom/wsw/cospa/bean/ChapterListBean;->setParentNameString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v6, v4}, Lcom/wsw/cospa/bean/ChapterListBean;->setDurChapterName(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v6, v5}, Lcom/wsw/cospa/bean/ChapterListBean;->setDurChapterUrl(Ljava/lang/String;)V

    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 25
    invoke-virtual {v6, v3}, Lcom/wsw/cospa/bean/ChapterListBean;->setChapterId(Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_3
    invoke-virtual {v6, v5}, Lcom/wsw/cospa/bean/ChapterListBean;->setChapterId(Ljava/lang/String;)V

    .line 27
    :goto_2
    iget-object p3, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-virtual {p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getVariable()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Lcom/wsw/cospa/bean/ChapterListBean;->setVariable(Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 29
    :cond_4
    new-instance p1, Lcom/wsw/cospa/model/new$if;

    invoke-direct {p1, p0, v0, v1, p4}, Lcom/wsw/cospa/model/new$if;-><init>(Lcom/wsw/cospa/model/new;Ljava/lang/Object;Ljava/util/List;Lcom/wsw/cospa/model/new$do;)V

    return-object p1
.end method

.method private synthetic new(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/String;Ljava/util/Map;Lio/reactivex/ObservableEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "\u76ee\u5f55\u83b7\u53d6\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-direct {v0, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;-><init>(Lcom/wsw/cospa/bean/BaseComicBean;)V

    iput-object v0, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/model/new;->do:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setTag(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/model/new;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterList()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/model/new;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/for;->for(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, p1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/model/new;->for:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->preTreatSourceRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "-"

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 11
    :goto_0
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p3, p1, v4, v0}, Lcom/wsw/cospa/model/new;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/model/new$if;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/wsw/cospa/model/new$if;->do(Lcom/wsw/cospa/model/new$if;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 13
    invoke-static {p1}, Lcom/wsw/cospa/model/new$if;->if(Lcom/wsw/cospa/model/new$if;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-le v4, v1, :cond_3

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/wsw/cospa/model/new$if;->if(Lcom/wsw/cospa/model/new$if;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    .line 16
    new-instance p1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p1, v1, v5, v5, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 17
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/model/impl/if;->break()Lcom/wsw/cospa/model/impl/if;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/model/impl/if;->catch(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;)Lio/reactivex/new;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lio/reactivex/new;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/Response;

    .line 19
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p1

    .line 21
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 22
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 24
    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v4, v0}, Lcom/wsw/cospa/model/new;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/model/new$if;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/wsw/cospa/model/new$if;->do(Lcom/wsw/cospa/model/new$if;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 27
    invoke-interface {p5}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 28
    invoke-interface {p5, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    :cond_3
    invoke-static {p1}, Lcom/wsw/cospa/model/new$if;->if(Lcom/wsw/cospa/model/new$if;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_4
    :goto_3
    invoke-static {p1}, Lcom/wsw/cospa/model/new$if;->if(Lcom/wsw/cospa/model/new$if;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    invoke-static {p1}, Lcom/wsw/cospa/model/new$if;->if(Lcom/wsw/cospa/model/new$if;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 33
    invoke-static {p1}, Lcom/wsw/cospa/model/new$if;->if(Lcom/wsw/cospa/model/new$if;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance p2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-static {p1}, Lcom/wsw/cospa/model/new$if;->if(Lcom/wsw/cospa/model/new$if;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p2, v4, v5, v5, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 35
    :try_start_1
    invoke-static {}, Lcom/wsw/cospa/model/impl/if;->break()Lcom/wsw/cospa/model/impl/if;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/wsw/cospa/model/impl/if;->catch(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;)Lio/reactivex/new;

    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lio/reactivex/new;->blockingFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lretrofit2/Response;

    .line 37
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 38
    invoke-virtual {p2}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p2

    .line 39
    new-instance v6, Lcom/google/gson/GsonBuilder;

    invoke-direct {v6}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 40
    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v6

    .line 41
    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v6

    .line 42
    invoke-virtual {v6, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-static {p1}, Lcom/wsw/cospa/model/new$if;->if(Lcom/wsw/cospa/model/new$if;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, p2, v4, v6, v0}, Lcom/wsw/cospa/model/new;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/model/new$if;

    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/wsw/cospa/model/new$if;->do(Lcom/wsw/cospa/model/new$if;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    .line 45
    invoke-interface {p5}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 46
    invoke-interface {p5, p2}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_5
    if-nez v3, :cond_6

    .line 47
    invoke-static {p3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 48
    :cond_6
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    invoke-static {p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 51
    invoke-interface {p5, p2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 52
    invoke-interface {p5}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method


# virtual methods
.method public for(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/util/Map;)Lio/reactivex/new;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/wsw/cospa/model/for;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/wsw/cospa/model/for;-><init>(Lcom/wsw/cospa/model/new;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v6}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method
