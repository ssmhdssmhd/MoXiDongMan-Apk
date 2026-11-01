.class public Lcom/wsw/cospa/presenter/do;
.super Lcom/wsw/cospa/contract/ChapterBrowseContract$do;
.source "SourceFile"


# static fields
.field public static final catch:Ljava/lang/String; = "do"


# instance fields
.field private break:I

.field private case:Lcom/wsw/cospa/bean/ChapterListBean;

.field private else:Lcom/wsw/cospa/bean/ComicShelfBean;

.field private for:Landroidx/appcompat/app/AppCompatActivity;

.field private goto:Lcom/wsw/cospa/bean/ComicSourceBean;

.field private new:Lcom/wsw/cospa/bean/ChapterListBean;

.field private this:I

.field private try:Lcom/wsw/cospa/bean/ChapterListBean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$do;-><init>()V

    return-void
.end method

.method private synthetic A(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->try:Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic B(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->throw(Lcom/wsw/cospa/bean/ChapterListBean;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p1

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/wsw/cospa/dao/DatabaseHelper;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicContentBean;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->native(Lcom/wsw/cospa/bean/ComicContentBean;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 7
    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/presenter/do;->M(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/presenter/do;->M(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/presenter/do;->M(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/presenter/do;->M(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    :goto_0
    return-void
.end method

.method private synthetic C(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->case:Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic D(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->throw(Lcom/wsw/cospa/bean/ChapterListBean;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p1

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/wsw/cospa/dao/DatabaseHelper;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicContentBean;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->native(Lcom/wsw/cospa/bean/ComicContentBean;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 7
    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/presenter/do;->M(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/presenter/do;->M(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/presenter/do;->M(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/presenter/do;->M(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    :goto_0
    return-void
.end method

.method private synthetic E(Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->for:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/strictfp$if;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/strictfp$if;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariableMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "User-Agent"

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    move v2, v5

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wsw/cospa/utils/while;->goto(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v1

    if-nez v2, :cond_1

    .line 9
    invoke-static {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {v0, v3, v1}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/presenter/do;->for:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->volatile(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/goto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/goto;->catch()Lcom/bumptech/glide/else;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/model/if;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/strictfp$if;->for()Lcom/wsw/cospa/utils/strictfp;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/bumptech/glide/load/model/if;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/else;->u0(Ljava/lang/Object;)Lcom/bumptech/glide/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/else;->C0()Lcom/bumptech/glide/request/FutureTarget;

    :cond_2
    return-void
.end method

.method private synthetic F(Lcom/wsw/cospa/bean/ComicContentBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentBean;->getDurContentUrl()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 4
    new-instance v2, Landroid/support/v4/wj;

    invoke-direct {v2, p0, v1}, Landroid/support/v4/wj;-><init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    const-wide/16 v3, 0x12c

    invoke-static {v2, v3, v4}, Landroid/support/v4/wi0;->case(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->synchronized(Lcom/wsw/cospa/bean/ComicContentBean;Lcom/wsw/cospa/dao/DatabaseHelper$OnUpgradeChangeListener;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    return-object p0
.end method

.method public static synthetic abstract(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/presenter/do;->w(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic b(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    return-object p0
.end method

.method public static synthetic c(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    return-object p0
.end method

.method public static synthetic continue(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/presenter/do;->z(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic d(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    return-object p0
.end method

.method public static synthetic default(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/presenter/do;->D(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic e(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    return-object p0
.end method

.method public static synthetic extends(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/presenter/do;->r(Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    return-void
.end method

.method public static synthetic f(Lcom/wsw/cospa/presenter/do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/presenter/do;->break:I

    return p0
.end method

.method public static synthetic finally(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/presenter/do;->E(Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    return-void
.end method

.method public static synthetic g(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    return-object p0
.end method

.method public static synthetic h(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ChapterListBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    return-object p0
.end method

.method public static synthetic i(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    return-object p0
.end method

.method public static synthetic implements(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    return-object p0
.end method

.method public static synthetic import(Lcom/wsw/cospa/presenter/do;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/presenter/do;->t(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic instanceof(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ChapterListBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/presenter/do;->case:Lcom/wsw/cospa/bean/ChapterListBean;

    return-object p0
.end method

.method public static synthetic interface(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/presenter/do;->p(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic j(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ChapterListBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/presenter/do;->try:Lcom/wsw/cospa/bean/ChapterListBean;

    return-object p0
.end method

.method public static synthetic k(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    return-object p0
.end method

.method private synthetic n(Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->for:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/strictfp$if;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/strictfp$if;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariableMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "User-Agent"

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    move v2, v5

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wsw/cospa/utils/while;->goto(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v1

    if-nez v2, :cond_1

    .line 9
    invoke-static {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {v0, v3, v1}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/presenter/do;->for:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->volatile(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/goto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/goto;->catch()Lcom/bumptech/glide/else;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/model/if;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/strictfp$if;->for()Lcom/wsw/cospa/utils/strictfp;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/bumptech/glide/load/model/if;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/else;->u0(Ljava/lang/Object;)Lcom/bumptech/glide/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/else;->C0()Lcom/bumptech/glide/request/FutureTarget;

    :cond_2
    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ComicContentBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/presenter/do;->o(Lcom/wsw/cospa/bean/ComicContentBean;)V

    return-void
.end method

.method private synthetic o(Lcom/wsw/cospa/bean/ComicContentBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentBean;->getDurContentUrl()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 4
    new-instance v2, Landroid/support/v4/uj;

    invoke-direct {v2, p0, v1}, Landroid/support/v4/uj;-><init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    const-wide/16 v3, 0x12c

    invoke-static {v2, v3, v4}, Landroid/support/v4/wi0;->case(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->synchronized(Lcom/wsw/cospa/bean/ComicContentBean;Lcom/wsw/cospa/dao/DatabaseHelper$OnUpgradeChangeListener;)V

    :cond_1
    return-void
.end method

.method private synthetic p(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicContentBean;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/presenter/do;->G(Lcom/wsw/cospa/bean/ChapterListBean;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->native(Lcom/wsw/cospa/bean/ComicContentBean;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-interface {p2, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/presenter/do;->G(Lcom/wsw/cospa/bean/ChapterListBean;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/presenter/do;->G(Lcom/wsw/cospa/bean/ChapterListBean;)V

    :goto_0
    return-void
.end method

.method public static synthetic package(Lcom/wsw/cospa/presenter/do;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/presenter/do;->C(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic private(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/presenter/do;->u(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic protected(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/presenter/do;->y(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/presenter/do;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/presenter/do;->q(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private synthetic q(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic r(Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->for:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/strictfp$if;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/strictfp$if;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariableMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "User-Agent"

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    move v2, v5

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wsw/cospa/utils/while;->goto(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v1

    if-nez v2, :cond_1

    .line 9
    invoke-static {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {v0, v3, v1}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/presenter/do;->for:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->volatile(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/goto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/goto;->catch()Lcom/bumptech/glide/else;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/model/if;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/strictfp$if;->for()Lcom/wsw/cospa/utils/strictfp;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/bumptech/glide/load/model/if;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/else;->u0(Ljava/lang/Object;)Lcom/bumptech/glide/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/else;->C0()Lcom/bumptech/glide/request/FutureTarget;

    :cond_2
    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ComicContentBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/presenter/do;->F(Lcom/wsw/cospa/bean/ComicContentBean;)V

    return-void
.end method

.method private synthetic s(Lcom/wsw/cospa/bean/ComicContentBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentBean;->getDurContentUrl()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 4
    new-instance v2, Landroid/support/v4/vj;

    invoke-direct {v2, p0, v1}, Landroid/support/v4/vj;-><init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    const-wide/16 v3, 0x12c

    invoke-static {v2, v3, v4}, Landroid/support/v4/wi0;->case(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->synchronized(Lcom/wsw/cospa/bean/ComicContentBean;Lcom/wsw/cospa/dao/DatabaseHelper$OnUpgradeChangeListener;)V

    :cond_1
    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/presenter/do;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/presenter/do;->v(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic strictfp(Lcom/wsw/cospa/presenter/do;Landroid/support/v4/gp1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/presenter/do;->x(Landroid/support/v4/gp1;)V

    return-void
.end method

.method public static synthetic switch(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ComicContentBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/presenter/do;->s(Lcom/wsw/cospa/bean/ComicContentBean;)V

    return-void
.end method

.method public static synthetic synchronized(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    return-object p0
.end method

.method private synthetic t(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->try:Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/wsw/cospa/presenter/do;->catch:Ljava/lang/String;

    const-string v0, "\u6ca1\u6709\u4e0b\u4e00\u7ae0\u4e86\uff01"

    invoke-static {p1, v0}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic throws(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/presenter/do;->n(Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    return-void
.end method

.method public static synthetic transient(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-object p0
.end method

.method private synthetic u(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicContentBean;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/presenter/do;->l(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->native(Lcom/wsw/cospa/bean/ComicContentBean;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 7
    invoke-interface {p2, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/presenter/do;->l(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/presenter/do;->l(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    :goto_0
    return-void
.end method

.method private synthetic v(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->case:Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/wsw/cospa/presenter/do;->catch:Ljava/lang/String;

    const-string v0, "\u6ca1\u6709\u4e0a\u4e00\u7ae0\u4e86\uff01"

    invoke-static {p1, v0}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic volatile(Lcom/wsw/cospa/presenter/do;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/presenter/do;->A(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private synthetic w(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicContentBean;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/presenter/do;->l(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->native(Lcom/wsw/cospa/bean/ComicContentBean;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 7
    invoke-interface {p2, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/presenter/do;->l(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/presenter/do;->l(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    :goto_0
    return-void
.end method

.method public static synthetic while(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/presenter/do;->B(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private synthetic x(Landroid/support/v4/gp1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    move-result v0

    const/16 v1, 0x79

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-virtual {p1}, Landroid/support/v4/gp1;->do()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-interface {v0, p1}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->onPicturePaging(Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    :cond_0
    return-void
.end method

.method private static synthetic y(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic z(Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/g31;->try(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/presenter/do;->l(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->throw(Lcom/wsw/cospa/bean/ChapterListBean;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/dao/DatabaseHelper;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicContentBean;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->native(Lcom/wsw/cospa/bean/ComicContentBean;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 9
    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/presenter/do;->l(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/presenter/do;->l(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/presenter/do;->l(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public G(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/g31;->try(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/model/while;->break(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/lj;

    invoke-direct {v1, p0}, Landroid/support/v4/lj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/presenter/do$case;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/presenter/do$case;-><init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method public H(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dk;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/dk;-><init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public I(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ek;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/ek;-><init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public J(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/hj;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/hj;-><init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public K(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/bk;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/bk;-><init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public L(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ck;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/ck;-><init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public M(Lcom/wsw/cospa/bean/ChapterListBean;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/g31;->try(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/model/while;->break(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/kj;

    invoke-direct {v1, p0}, Landroid/support/v4/kj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/presenter/do$try;

    invoke-direct {v1, p0, p2, p1}, Lcom/wsw/cospa/presenter/do$try;-><init>(Lcom/wsw/cospa/presenter/do;ZLcom/wsw/cospa/bean/ChapterListBean;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method public break()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {v0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->showProgress()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/xj;

    invoke-direct {v0, p0}, Landroid/support/v4/xj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/nj;

    invoke-direct {v1, p0}, Landroid/support/v4/nj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/presenter/do$else;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/presenter/do$else;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public catch(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/presenter/do;->try:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 3
    new-instance p1, Landroid/support/v4/rj;

    invoke-direct {p1, p0}, Landroid/support/v4/rj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Landroid/support/v4/oj;

    invoke-direct {v0, p0}, Landroid/support/v4/oj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/wsw/cospa/presenter/do$goto;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/presenter/do$goto;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 6
    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public class(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/presenter/do;->case:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 3
    new-instance p1, Landroid/support/v4/yj;

    invoke-direct {p1, p0}, Landroid/support/v4/yj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Landroid/support/v4/pj;

    invoke-direct {v0, p0}, Landroid/support/v4/pj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/wsw/cospa/presenter/do$this;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/presenter/do$this;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 6
    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public const(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/g31;->try(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {p1}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->showProgress()V

    .line 3
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/model/while;->break(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/wsw/cospa/presenter/do$for;

    invoke-direct {v0, p0, p2}, Lcom/wsw/cospa/presenter/do$for;-><init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method public else()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/model/while;->try()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v1, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->case:Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz v0, :cond_1

    .line 5
    iput-object v1, p0, Lcom/wsw/cospa/presenter/do;->case:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->try:Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz v0, :cond_2

    .line 7
    iput-object v1, p0, Lcom/wsw/cospa/presenter/do;->try:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_3

    .line 9
    iput-object v1, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->goto:Lcom/wsw/cospa/bean/ComicSourceBean;

    if-eqz v0, :cond_4

    .line 11
    iput-object v1, p0, Lcom/wsw/cospa/presenter/do;->goto:Lcom/wsw/cospa/bean/ComicSourceBean;

    :cond_4
    return-void
.end method

.method public final(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {v0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->showProgress()V

    .line 2
    new-instance v0, Landroid/support/v4/gj;

    invoke-direct {v0, p1}, Landroid/support/v4/gj;-><init>(Lcom/wsw/cospa/bean/ChapterListBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/qj;

    invoke-direct {v1, p0}, Landroid/support/v4/qj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/presenter/do$if;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/presenter/do$if;-><init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public goto()Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->goto:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-object v0
.end method

.method public l(Lcom/wsw/cospa/bean/ChapterListBean;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/g31;->try(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/model/while;->break(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/jj;

    invoke-direct {v1, p0}, Landroid/support/v4/jj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/presenter/do$new;

    invoke-direct {v1, p0, p2, p1}, Lcom/wsw/cospa/presenter/do$new;-><init>(Lcom/wsw/cospa/presenter/do;ZLcom/wsw/cospa/bean/ChapterListBean;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method public m(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ij;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/ij;-><init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public new()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object v0

    const-class v1, Landroid/support/v4/gp1;

    invoke-virtual {v0, v1}, Landroid/support/v4/ep1;->try(Ljava/lang/Class;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/mj;

    invoke-direct {v1, p0}, Landroid/support/v4/mj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public super(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/presenter/do;->try:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 3
    new-instance p1, Landroid/support/v4/ak;

    invoke-direct {p1, p0}, Landroid/support/v4/ak;-><init>(Lcom/wsw/cospa/presenter/do;)V

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Landroid/support/v4/sj;

    invoke-direct {v0, p0}, Landroid/support/v4/sj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/wsw/cospa/presenter/do$break;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/presenter/do$break;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 6
    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public this(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/presenter/do;->for:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object p1

    const-string v0, "comic_shelf_key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/y8;->if(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    iput-object p1, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/presenter/do;->this:I

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapterPage()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/presenter/do;->break:I

    and-int/lit16 p1, p1, 0xfff

    .line 7
    iput p1, p0, Lcom/wsw/cospa/presenter/do;->break:I

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    iget-object p2, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updateChapterName(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/model/do;->abstract(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/presenter/do;->goto:Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 12
    invoke-virtual {p0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    iget-object p2, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->initComicName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    iget-object p2, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-interface {p1, p2, v0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->initComicBook(Lcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 14
    invoke-virtual {p0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    iget-object p2, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->new:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updateCatalog(Lcom/wsw/cospa/bean/ComicShelfBean;I)V

    .line 15
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p1

    new-instance p2, Lcom/wsw/cospa/presenter/do$do;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/presenter/do$do;-><init>(Lcom/wsw/cospa/presenter/do;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public throw(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do;->else:Lcom/wsw/cospa/bean/ComicShelfBean;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/presenter/do;->case:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 3
    new-instance p1, Landroid/support/v4/zj;

    invoke-direct {p1, p0}, Landroid/support/v4/zj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Landroid/support/v4/tj;

    invoke-direct {v0, p0}, Landroid/support/v4/tj;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/wsw/cospa/presenter/do$catch;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/presenter/do$catch;-><init>(Lcom/wsw/cospa/presenter/do;)V

    .line 6
    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
