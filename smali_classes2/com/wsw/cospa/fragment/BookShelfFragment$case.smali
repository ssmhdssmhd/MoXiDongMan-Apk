.class public Lcom/wsw/cospa/fragment/BookShelfFragment$case;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/fragment/BookShelfFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/ComicShelfBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private do:Z

.field public final synthetic if:Lcom/wsw/cospa/fragment/BookShelfFragment;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/BookShelfFragment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->do:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/BookShelfFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->default(Lcom/wsw/cospa/fragment/BookShelfFragment;Ljava/util/List;)Ljava/util/List;

    .line 4
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->class()Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->extends(Lcom/wsw/cospa/fragment/BookShelfFragment;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->extends(Lcom/wsw/cospa/fragment/BookShelfFragment;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getViewId()I

    move-result v3

    invoke-static {v1, v3}, Lcom/wsw/cospa/fragment/BookShelfFragment;->package(Lcom/wsw/cospa/fragment/BookShelfFragment;I)I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "shelf_mode_key"

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/wsw/cospa/fragment/BookShelfFragment;->package(Lcom/wsw/cospa/fragment/BookShelfFragment;I)I

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->finally(Lcom/wsw/cospa/fragment/BookShelfFragment;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->private(Lcom/wsw/cospa/fragment/BookShelfFragment;)Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->private(Lcom/wsw/cospa/fragment/BookShelfFragment;)Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->refresh(Ljava/util/List;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->finally(Lcom/wsw/cospa/fragment/BookShelfFragment;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->abstract(Lcom/wsw/cospa/fragment/BookShelfFragment;)Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->abstract(Lcom/wsw/cospa/fragment/BookShelfFragment;)Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;->refresh(Ljava/util/List;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-virtual {v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->implements()V

    .line 16
    iget-boolean v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->do:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    iget-object v0, v0, Lcom/wsw/cospa/base/LazyFragment;->case:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/g31;->try(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->finally(Lcom/wsw/cospa/fragment/BookShelfFragment;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v0, v2}, Lcom/wsw/cospa/fragment/BookShelfFragment;->continue(Lcom/wsw/cospa/fragment/BookShelfFragment;Z)Z

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v0, v2}, Lcom/wsw/cospa/fragment/BookShelfFragment;->strictfp(Lcom/wsw/cospa/fragment/BookShelfFragment;Z)Z

    .line 20
    :goto_2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->volatile(Lcom/wsw/cospa/fragment/BookShelfFragment;Ljava/util/List;)V

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_7

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->throws(Lcom/wsw/cospa/fragment/BookShelfFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->throws(Lcom/wsw/cospa/fragment/BookShelfFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_9

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    const-string v0, "\u60a8\u8fd8\u672a\u6dfb\u52a0\u6f2b\u753b\u5230\u4e66\u67b6\uff01"

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->u(Ljava/lang/String;)V

    goto :goto_4

    .line 24
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->throws(Lcom/wsw/cospa/fragment/BookShelfFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->throws(Lcom/wsw/cospa/fragment/BookShelfFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_9

    .line 25
    :cond_8
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    const-string v0, "\u6682\u65e0\u56fe\u6e90"

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->u(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$case;->if:Lcom/wsw/cospa/fragment/BookShelfFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/BookShelfFragment;->return:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
