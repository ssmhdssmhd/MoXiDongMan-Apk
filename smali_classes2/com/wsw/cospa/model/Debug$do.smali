.class Lcom/wsw/cospa/model/Debug$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/Debug;->while(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/SearchComicBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/Debug;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/model/Debug;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/util/List;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "\u2605%s \u641c\u7d22\u7ed3\u675f"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    const-string v0, "\u641c\u7d22\u5217\u8868\u4e3a\u7a7a"

    invoke-static {p1, v0}, Lcom/wsw/cospa/model/Debug;->if(Lcom/wsw/cospa/model/Debug;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/wsw/cospa/model/Debug;->for()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u6210\u529f\u83b7\u53d6\u641c\u7d22\u7ed3\u679c\u00bb \u5171"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u4e2a\u7ed3\u679c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    .line 6
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getUrlNext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    iget-object v4, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u25cf\u4e0b\u4e00\u9875\u5730\u5740\u00bb "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u641c\u7d22\u5730\u5740\u00bb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getSearchPage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u5730\u5740\u8bf7\u6c42\u5934\u00bb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getHeadersMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u4e66\u7c4d\u540d\u79f0\u00bb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u4e66\u7c4d\u4f5c\u8005\u00bb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u4e66\u7c4d\u5206\u7c7b\u00bb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u4e66\u7c4d\u7b80\u4ecb\u00bb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getIntroduce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u6700\u65b0\u7ae0\u8282\u00bb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u4e66\u7c4d\u5c01\u9762\u00bb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u5c01\u9762\u8bf7\u6c42\u5934\u00bb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getCoverHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u4e66\u7c4d\u7f51\u5740\u00bb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u7f51\u5740\u8bf7\u6c42\u5934\u00bb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getUrlHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/wsw/cospa/model/Debug;->for()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->package(Lcom/wsw/cospa/bean/SearchComicBean;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    invoke-static {v0, p1, v3}, Lcom/wsw/cospa/model/Debug;->new(Lcom/wsw/cospa/model/Debug;Lcom/wsw/cospa/bean/ComicShelfBean;Z)V

    goto :goto_0

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    const-string v0, "\u8be6\u60c5\u7f51\u5740\u83b7\u53d6\u5931\u8d25"

    invoke-static {p1, v0}, Lcom/wsw/cospa/model/Debug;->if(Lcom/wsw/cospa/model/Debug;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/wsw/cospa/model/Debug;->for()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wsw/cospa/model/Debug;->if(Lcom/wsw/cospa/model/Debug;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/wsw/cospa/model/Debug;->for()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u2605%s \u76ee\u5f55\u7ed3\u675f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/model/Debug$do;->do(Ljava/util/List;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$do;->do:Lcom/wsw/cospa/model/Debug;

    invoke-static {v0}, Lcom/wsw/cospa/model/Debug;->do(Lcom/wsw/cospa/model/Debug;)Landroid/support/v4/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
