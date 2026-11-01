.class Lcom/wsw/cospa/activity/DownloadTaskActivity$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/DownloadTaskActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/Task;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/DownloadTaskActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$do;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

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

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity$do;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/Task;

    .line 4
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->isFinish()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-lez v1, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$do;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->throws(Lcom/wsw/cospa/activity/DownloadTaskActivity;Z)Z

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$do;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$do;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->throws(Lcom/wsw/cospa/activity/DownloadTaskActivity;Z)Z

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$do;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$do;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$do;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->default(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->refresh(Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$do;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->continue()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity$do;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
