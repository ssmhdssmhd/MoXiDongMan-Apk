.class Lcom/wsw/cospa/activity/FindComicDetailActivity$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/FindComicDetailActivity;->strictfp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/SearchComicBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/FindComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/FindComicDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onError(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->static(Lcom/wsw/cospa/activity/FindComicDetailActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->static(Lcom/wsw/cospa/activity/FindComicDetailActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->throws(Lcom/wsw/cospa/activity/FindComicDetailActivity;)Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->refresh(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->throws(Lcom/wsw/cospa/activity/FindComicDetailActivity;)Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->new(Ljava/util/List;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 9
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/SearchComicBean;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->default(Lcom/wsw/cospa/activity/FindComicDetailActivity;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getUrlNext()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->extends(Lcom/wsw/cospa/activity/FindComicDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->switch(Lcom/wsw/cospa/activity/FindComicDetailActivity;)I

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
