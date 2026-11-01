.class Lcom/wsw/cospa/presenter/do$goto;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/presenter/do;->catch(Lcom/wsw/cospa/bean/ChapterListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/ComicContentImgBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/presenter/do;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/presenter/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/presenter/do$goto;->do:Lcom/wsw/cospa/presenter/do;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$goto;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {v0, p1}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/presenter/do$goto;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$goto;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {v0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->hideProgress()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$goto;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {v0, p1}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->loadNextChapter(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$goto;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updatePageSeekBar(II)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$goto;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    iget-object v2, p0, Lcom/wsw/cospa/presenter/do$goto;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v2}, Lcom/wsw/cospa/presenter/do;->j(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updateComicBook(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$goto;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterContentUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$goto;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v0}, Lcom/wsw/cospa/presenter/do;->i(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
