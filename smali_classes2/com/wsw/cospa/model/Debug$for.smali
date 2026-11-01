.class Lcom/wsw/cospa/model/Debug$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/Debug;->goto(Lcom/wsw/cospa/bean/ComicShelfBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/wsw/cospa/bean/ComicShelfBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/Debug;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/model/Debug;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "\u2605%s \u76ee\u5f55\u7ed3\u675f"

    const/4 v3, 0x0

    if-lez v0, :cond_0

    .line 2
    iget-object v4, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u25cf\u6210\u529f\u83b7\u53d6\u76ee\u5f55\u5217\u8868\u00bb \u5171"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a\u7ae0\u8282"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v0

    .line 4
    iget-object v4, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u25cf\u7ae0\u8282\u5206\u7ea7\u6807\u8bc6\u00bb "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getParentIdString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 5
    iget-object v4, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u25cf\u7ae0\u8282\u5206\u7ea7\u540d\u79f0\u00bb "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getParentNameString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 6
    iget-object v4, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u25cf\u7ae0\u8282\u540d\u79f0\u00bb "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 7
    iget-object v4, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u25cf\u7ae0\u8282\u7f51\u5740\u00bb "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/support/v4/fd2;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u7ae0\u8282ID\u00bb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getChapterId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25cf\u6240\u6709\u53d8\u91cf\u6570\u636e\u00bb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getVariable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/wsw/cospa/model/Debug;->for()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    invoke-static {p1, v0}, Lcom/wsw/cospa/model/Debug;->case(Lcom/wsw/cospa/model/Debug;Lcom/wsw/cospa/bean/ChapterListBean;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    const-string v0, "\u83b7\u53d6\u5230\u7684\u76ee\u5f55\u4e3a\u7a7a"

    invoke-static {p1, v0}, Lcom/wsw/cospa/model/Debug;->if(Lcom/wsw/cospa/model/Debug;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

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
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wsw/cospa/model/Debug;->if(Lcom/wsw/cospa/model/Debug;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

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
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/model/Debug$for;->do(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$for;->do:Lcom/wsw/cospa/model/Debug;

    invoke-static {v0}, Lcom/wsw/cospa/model/Debug;->do(Lcom/wsw/cospa/model/Debug;)Landroid/support/v4/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
