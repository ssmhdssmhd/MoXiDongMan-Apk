.class Lcom/wsw/cospa/model/Debug$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/Debug;->this(Lcom/wsw/cospa/bean/ChapterListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/wsw/cospa/bean/ComicContentBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/Debug;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/model/Debug;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/Debug$new;->do:Lcom/wsw/cospa/model/Debug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicContentBean;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentBean;->getDurContentUrl()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentBean;->getDurContentUrl()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/model/Debug$new;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u25cf\u6b63\u6587\u56fe\u7247\u8bf7\u6c42\u5934\u00bb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/model/Debug$new;->do:Lcom/wsw/cospa/model/Debug;

    const-string v2, "\u25cf\u7ae0\u8282\u5185\u5bb9\u00bb "

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 7
    iget-object v4, p0, Lcom/wsw/cospa/model/Debug$new;->do:Lcom/wsw/cospa/model/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/support/v4/fd2;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$new;->do:Lcom/wsw/cospa/model/Debug;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/wsw/cospa/model/Debug;->for()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "\u2605%s \u6b63\u6587\u7ed3\u675f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$new;->do:Lcom/wsw/cospa/model/Debug;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$new;->do:Lcom/wsw/cospa/model/Debug;

    invoke-static {v0}, Lcom/wsw/cospa/model/Debug;->else(Lcom/wsw/cospa/model/Debug;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$new;->do:Lcom/wsw/cospa/model/Debug;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wsw/cospa/model/Debug;->if(Lcom/wsw/cospa/model/Debug;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/model/Debug$new;->do:Lcom/wsw/cospa/model/Debug;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/wsw/cospa/model/Debug;->for()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u2605%s \u6b63\u6587\u7ed3\u675f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicContentBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/model/Debug$new;->do(Lcom/wsw/cospa/bean/ComicContentBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug$new;->do:Lcom/wsw/cospa/model/Debug;

    invoke-static {v0}, Lcom/wsw/cospa/model/Debug;->do(Lcom/wsw/cospa/model/Debug;)Landroid/support/v4/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
