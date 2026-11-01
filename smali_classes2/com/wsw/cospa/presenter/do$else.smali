.class Lcom/wsw/cospa/presenter/do$else;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/presenter/do;->break()V
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
    iput-object p1, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/presenter/do$else;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {v0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->hideProgress()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {v0, p1}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->loadChapter(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v0}, Lcom/wsw/cospa/presenter/do;->f(Lcom/wsw/cospa/presenter/do;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    iget-object v1, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v1}, Lcom/wsw/cospa/presenter/do;->f(Lcom/wsw/cospa/presenter/do;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->moveToPosition(I)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    iget-object v1, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v1}, Lcom/wsw/cospa/presenter/do;->f(Lcom/wsw/cospa/presenter/do;)I

    move-result v1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updatePageSeekBar(II)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    iget-object v1, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v1}, Lcom/wsw/cospa/presenter/do;->f(Lcom/wsw/cospa/presenter/do;)I

    move-result v1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updateButtomRight(II)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updatePageSeekBar(II)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updateButtomRight(II)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    iget-object v1, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v1}, Lcom/wsw/cospa/presenter/do;->transient(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->initComicName(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    iget-object v1, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v1}, Lcom/wsw/cospa/presenter/do;->h(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->updateComicBook(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

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
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$else;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v0}, Lcom/wsw/cospa/presenter/do;->g(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
