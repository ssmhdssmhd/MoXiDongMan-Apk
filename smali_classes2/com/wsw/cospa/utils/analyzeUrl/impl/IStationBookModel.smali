.class public interface abstract Lcom/wsw/cospa/utils/analyzeUrl/impl/IStationBookModel;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract AppSourcelogin(Lcom/wsw/cospa/bean/ComicSourceBean;)Lio/reactivex/new;
.end method

.method public abstract findBook(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Lio/reactivex/new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getBookContent(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ")",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicContentBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBookInfo(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ")",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChapterList(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract searchBook(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Lio/reactivex/new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;>;"
        }
    .end annotation
.end method
