.class Lcom/wsw/cospa/presenter/do$new;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/presenter/do;->l(Lcom/wsw/cospa/bean/ChapterListBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Lcom/wsw/cospa/bean/ComicContentBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Lcom/wsw/cospa/presenter/do;

.field public final synthetic if:Lcom/wsw/cospa/bean/ChapterListBean;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/presenter/do;ZLcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/presenter/do$new;->for:Lcom/wsw/cospa/presenter/do;

    iput-boolean p2, p0, Lcom/wsw/cospa/presenter/do$new;->do:Z

    iput-object p3, p0, Lcom/wsw/cospa/presenter/do$new;->if:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicContentBean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$new;->for:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {v0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->hideProgress()V

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentBean;->getDurContentUrl()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    iget-boolean p1, p0, Lcom/wsw/cospa/presenter/do$new;->do:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/presenter/do$new;->for:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {p1}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {p1, v0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->loadPreChapter(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/presenter/do$new;->for:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {p1}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {p1, v0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->loadNextChapter(Ljava/util/List;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/presenter/do$new;->for:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {p1}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updatePageSeekBar(II)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/presenter/do$new;->for:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {p1}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    iget-object v2, p0, Lcom/wsw/cospa/presenter/do$new;->if:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-interface {p1, v2}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updateComicBook(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/presenter/do$new;->for:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {p1}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterContentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updateTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$new;->for:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    iget-object v1, p0, Lcom/wsw/cospa/presenter/do$new;->if:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updateComicBook(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$new;->for:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updateTitle(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/presenter/do$new;->for:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {p1}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    const-string v0, "\u6f2b\u753b\u56fe\u7247\u83b7\u53d6\u5931\u8d25\uff01\u8bf7\u70b9\u51fb\u5237\u65b0\u6309\u94ae"

    invoke-interface {p1, v0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->showToast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$new;->for:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {v0, p1}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicContentBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/presenter/do$new;->do(Lcom/wsw/cospa/bean/ComicContentBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$new;->for:Lcom/wsw/cospa/presenter/do;

    invoke-static {v0}, Lcom/wsw/cospa/presenter/do;->implements(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
