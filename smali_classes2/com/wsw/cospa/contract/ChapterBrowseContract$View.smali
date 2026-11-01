.class public interface abstract Lcom/wsw/cospa/contract/ChapterBrowseContract$View;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/base/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/contract/ChapterBrowseContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract hideProgress()V
.end method

.method public abstract initComicBook(Lcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ComicShelfBean;)V
.end method

.method public abstract initComicName(Ljava/lang/String;)V
.end method

.method public abstract loadChapter(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadNextChapter(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadPreChapter(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract moveToPosition(I)V
.end method

.method public abstract onPicturePaging(Lcom/wsw/cospa/bean/ComicContentImgBean;)V
.end method

.method public abstract showProgress()V
.end method

.method public abstract showToast(Ljava/lang/String;)V
.end method

.method public abstract skipNextChapter(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract skipPreChapter(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateButtomRight(II)V
.end method

.method public abstract updateCatalog(Lcom/wsw/cospa/bean/ComicShelfBean;I)V
.end method

.method public abstract updateChapterName(Ljava/lang/String;)V
.end method

.method public abstract updateComicBook(Lcom/wsw/cospa/bean/ChapterListBean;)V
.end method

.method public abstract updatePageSeekBar(II)V
.end method

.method public abstract updateTitle(Ljava/lang/String;)V
.end method
