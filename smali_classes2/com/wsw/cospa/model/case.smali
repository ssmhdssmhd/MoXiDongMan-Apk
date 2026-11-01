.class public Lcom/wsw/cospa/model/case;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Ljava/lang/String;

.field private for:Lcom/wsw/cospa/bean/ComicSourceBean;

.field private if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/model/case;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/model/case;->if:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/wsw/cospa/model/case;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/case;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/model/case;->for(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private synthetic for(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 4
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

    const-string p2, "\u4e66\u7c4d\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/model/case;->do:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setTag(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;-><init>()V

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setNoteUrl(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/wsw/cospa/model/case;->do:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setTag(Ljava/lang/String;)V

    .line 9
    new-instance v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-direct {v2, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;-><init>(Lcom/wsw/cospa/bean/BaseComicBean;)V

    .line 10
    invoke-virtual {v2, p3, p1, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/model/case;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookName()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {v2, p1, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setName(Ljava/lang/String;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/model/case;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookAuthor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 16
    invoke-static {p1}, Landroid/support/v4/od0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setAuthor(Ljava/lang/String;)V

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/model/case;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookKind()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getStringList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    invoke-static {p1}, Landroid/support/v4/od0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setKind(Ljava/lang/String;)V

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/wsw/cospa/model/case;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleCoverUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v2, p1, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getCoverString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 22
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setCoverUrl(Ljava/lang/String;)V

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/wsw/cospa/model/case;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleIntroduce()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 25
    invoke-static {p1}, Landroid/support/v4/od0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setIntroduce(Ljava/lang/String;)V

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/wsw/cospa/model/case;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookLastChapter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 28
    invoke-static {p1}, Landroid/support/v4/od0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setLastChapterName(Ljava/lang/String;)V

    .line 29
    :cond_7
    iget-object p1, p0, Lcom/wsw/cospa/model/case;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 31
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_8
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterUrl(Ljava/lang/String;)V

    .line 33
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/model/case;->if:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setOrigin(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setComicInfoBean(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    .line 35
    invoke-interface {p4, p2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 36
    invoke-interface {p4}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ")",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/qn;

    invoke-direct {v0, p0, p2, p3, p1}, Landroid/support/v4/qn;-><init>(Lcom/wsw/cospa/model/case;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method
