.class Lcom/wsw/cospa/model/goto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Ljava/lang/String;

.field private for:Lcom/wsw/cospa/bean/ComicSourceBean;

.field private if:Ljava/lang/String;

.field private new:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/model/goto;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/model/goto;->if:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-void
.end method

.method private synthetic case(Lretrofit2/Response;Ljava/util/Map;Ljava/util/Map;Lio/reactivex/ObservableEmitter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance p2, Ljava/lang/Throwable;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbf\u95ee\u7f51\u7ad9\u5931\u8d25:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u9519\u8bef\u4fe1\u606f\uff1a "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p2}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v3

    .line 9
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 10
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 12
    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookUrlPattern()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 18
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookLastChapter()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 19
    invoke-direct {p0, v2, v0, p2, p3}, Lcom/wsw/cospa/model/goto;->for(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 20
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrlNext()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v2, p1, v4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/model/goto;->new:Ljava/lang/String;

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/wsw/cospa/model/goto;->new:Ljava/lang/String;

    .line 25
    :goto_2
    iget-object p1, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchList()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {v2, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->preTreatSourceRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object v5, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchList()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 28
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    .line 29
    :goto_3
    invoke-virtual {v2, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 30
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getVariable()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/wsw/cospa/model/goto$do;

    invoke-direct {v8, p0}, Lcom/wsw/cospa/model/goto$do;-><init>(Lcom/wsw/cospa/model/goto;)V

    .line 31
    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 32
    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {p2, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_7

    .line 34
    invoke-direct {p0, v2, v0, p2, p3}, Lcom/wsw/cospa/model/goto;->for(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 35
    iget-object p2, p0, Lcom/wsw/cospa/model/goto;->new:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/bean/SearchComicBean;->setUrlNext(Ljava/lang/String;)V

    .line 36
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 37
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 38
    invoke-virtual {v2, v3, v6, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, v2, v0, p2, p3}, Lcom/wsw/cospa/model/goto;->new(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 40
    iget-object v7, p0, Lcom/wsw/cospa/model/goto;->new:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/wsw/cospa/bean/SearchComicBean;->setUrlNext(Ljava/lang/String;)V

    .line 41
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 42
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_b

    if-eqz v5, :cond_b

    .line 43
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_5

    .line 44
    :cond_a
    new-instance p1, Ljava/lang/Throwable;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u5217\u8868\u83b7\u53d6\u5931\u8d25:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    .line 45
    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 46
    invoke-interface {p4}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_d

    .line 47
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "\u672a\u83b7\u53d6\u5230\u8be5\u6f2b\u753b\uff01"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 48
    :cond_c
    invoke-interface {p4, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 49
    invoke-interface {p4}, Lio/reactivex/Emitter;->onComplete()V

    :cond_d
    :goto_6
    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/goto;Lretrofit2/Response;Ljava/util/Map;Ljava/util/Map;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/model/goto;->case(Lretrofit2/Response;Ljava/util/Map;Ljava/util/Map;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private for(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/wsw/cospa/bean/SearchComicBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wsw/cospa/bean/SearchComicBean;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/SearchComicBean;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/SearchComicBean;->setSearchPage(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p4}, Lcom/wsw/cospa/bean/SearchComicBean;->setHeadersMap(Ljava/util/Map;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/wsw/cospa/bean/SearchComicBean;->mergeVariable(Ljava/util/Map;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setBook(Lcom/wsw/cospa/bean/BaseComicBean;)V

    .line 6
    iget-object p3, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookName()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/SearchComicBean;->setNoteUrl(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/model/goto;->do:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/SearchComicBean;->setTag(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/model/goto;->if:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/SearchComicBean;->setOrigin(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p3}, Lcom/wsw/cospa/bean/SearchComicBean;->setName(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleCoverUrl()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getCoverString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/SearchComicBean;->setCoverUrl(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleIntroduce()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/od0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/SearchComicBean;->setIntroduce(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookAuthor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/od0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/SearchComicBean;->setAuthor(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookKind()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getStringList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p2

    const-string p3, ","

    invoke-static {p3, p2}, Landroid/support/v4/l22;->static(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/od0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/SearchComicBean;->setKind(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookLastChapter()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/od0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/SearchComicBean;->setLastChapter(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private new(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/wsw/cospa/bean/SearchComicBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wsw/cospa/bean/SearchComicBean;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/SearchComicBean;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/SearchComicBean;->setSearchPage(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p4}, Lcom/wsw/cospa/bean/SearchComicBean;->setHeadersMap(Ljava/util/Map;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/wsw/cospa/bean/SearchComicBean;->mergeVariable(Ljava/util/Map;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setBook(Lcom/wsw/cospa/bean/BaseComicBean;)V

    .line 6
    iget-object p3, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchName()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/model/goto;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setTag(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/model/goto;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setOrigin(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p3}, Lcom/wsw/cospa/bean/SearchComicBean;->setName(Ljava/lang/String;)V

    .line 11
    iget-object p3, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchAuthor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/support/v4/od0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/wsw/cospa/bean/SearchComicBean;->setAuthor(Ljava/lang/String;)V

    .line 12
    iget-object p3, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchKind()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getStringList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p3

    const-string v1, ","

    invoke-static {v1, p3}, Landroid/support/v4/l22;->static(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/support/v4/od0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/wsw/cospa/bean/SearchComicBean;->setKind(Ljava/lang/String;)V

    .line 13
    iget-object p3, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchLastChapter()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/support/v4/od0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/wsw/cospa/bean/SearchComicBean;->setLastChapter(Ljava/lang/String;)V

    .line 14
    iget-object p3, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchCoverUrl()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getCoverString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/wsw/cospa/bean/SearchComicBean;->setCoverUrl(Ljava/lang/String;)V

    .line 15
    iget-object p3, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleIntroduce()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/support/v4/od0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/wsw/cospa/bean/SearchComicBean;->setIntroduce(Ljava/lang/String;)V

    .line 16
    iget-object p3, p0, Lcom/wsw/cospa/model/goto;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchNoteUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/SearchComicBean;->setNoteUrl(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public if(Lretrofit2/Response;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/model/else;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/wsw/cospa/model/else;-><init>(Lcom/wsw/cospa/model/goto;Lretrofit2/Response;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public try()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/goto;->new:Ljava/lang/String;

    return-object v0
.end method
