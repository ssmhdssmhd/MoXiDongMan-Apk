.class Lcom/wsw/cospa/activity/DownloadComicActivity$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/DownloadComicActivity;->continue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/ComicInfoBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/DownloadComicActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/DownloadComicActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity$do;->do:Lcom/wsw/cospa/activity/DownloadComicActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/DownloadComicActivity$do;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity$do;->do:Lcom/wsw/cospa/activity/DownloadComicActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/DownloadComicActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity$do;->do:Lcom/wsw/cospa/activity/DownloadComicActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/DownloadComicActivity;->switch(Lcom/wsw/cospa/activity/DownloadComicActivity;)Lcom/wsw/cospa/adapter/DownloadListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/DownloadListAdapter;->refresh(Ljava/util/List;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity$do;->do:Lcom/wsw/cospa/activity/DownloadComicActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/DownloadComicActivity;->throws()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity$do;->do:Lcom/wsw/cospa/activity/DownloadComicActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/DownloadComicActivity;->strictfp()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity$do;->do:Lcom/wsw/cospa/activity/DownloadComicActivity;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
