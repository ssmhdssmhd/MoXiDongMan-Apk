.class Lcom/wsw/cospa/fragment/FindColumnFragment$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/FindColumnFragment;->interface(Z)V
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
.field public final synthetic do:Lcom/wsw/cospa/fragment/FindColumnFragment;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/FindColumnFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onError(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-virtual {v0}, Lcom/wsw/cospa/fragment/FindColumnFragment;->return()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/FindColumnFragment;->native(Lcom/wsw/cospa/fragment/FindColumnFragment;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-static {v1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->native(Lcom/wsw/cospa/fragment/FindColumnFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "searchPage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-static {v3}, Lcom/wsw/cospa/fragment/FindColumnFragment;->const(Lcom/wsw/cospa/fragment/FindColumnFragment;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-static {v1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->const(Lcom/wsw/cospa/fragment/FindColumnFragment;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "\n"

    if-ne v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    iget-object v1, v1, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->continue(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    iget-object v1, v1, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-virtual {v0}, Lcom/wsw/cospa/fragment/FindColumnFragment;->return()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/FindColumnFragment;->const(Lcom/wsw/cospa/fragment/FindColumnFragment;)I

    move-result v0

    const-string v1, "find_comic_view_mode_key"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/FindColumnFragment;->super(Lcom/wsw/cospa/fragment/FindColumnFragment;)Lcom/wsw/cospa/adapter/FindComicGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/FindComicGridAdapter;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/FindColumnFragment;->throw(Lcom/wsw/cospa/fragment/FindColumnFragment;)Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->refresh(Ljava/util/List;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_2

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/FindColumnFragment;->super(Lcom/wsw/cospa/fragment/FindColumnFragment;)Lcom/wsw/cospa/adapter/FindComicGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/FindComicGridAdapter;->if(Ljava/util/List;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/FindColumnFragment;->throw(Lcom/wsw/cospa/fragment/FindColumnFragment;)Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->new(Ljava/util/List;)V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 14
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/SearchComicBean;

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6f2b\u753b\u540d\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/SearchComicBean;->getUrlNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FindColumnFragment"

    invoke-static {v3, v1}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/SearchComicBean;->getVariable()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->while(Lcom/wsw/cospa/fragment/FindColumnFragment;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getUrlNext()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->import(Lcom/wsw/cospa/fragment/FindColumnFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;->do:Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-static {p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->final(Lcom/wsw/cospa/fragment/FindColumnFragment;)I

    return-void
.end method
