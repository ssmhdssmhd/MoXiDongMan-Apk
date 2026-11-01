.class Lcom/wsw/cospa/presenter/do$for;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/presenter/do;->const(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ChapterListBean;)V
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
.field public final synthetic do:Lcom/wsw/cospa/bean/ChapterListBean;

.field public final synthetic if:Lcom/wsw/cospa/presenter/do;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/presenter/do$for;->if:Lcom/wsw/cospa/presenter/do;

    iput-object p2, p0, Lcom/wsw/cospa/presenter/do$for;->do:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicContentBean;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentBean;->getDurContentUrl()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v1

    new-instance v2, Lcom/wsw/cospa/presenter/do$for$do;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/presenter/do$for$do;-><init>(Lcom/wsw/cospa/presenter/do$for;)V

    invoke-virtual {v1, p1, v2}, Lcom/wsw/cospa/dao/DatabaseHelper;->synchronized(Lcom/wsw/cospa/bean/ComicContentBean;Lcom/wsw/cospa/dao/DatabaseHelper$OnUpgradeChangeListener;)V

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u6b63\u6587\u89c4\u5219\u8bf7\u6c42\u5934 variable \uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", customVariable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getCustomVariable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u56fe\u7247\u5730\u5740\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRefreshComicRule"

    invoke-static {v1, v0}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicContentBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/presenter/do$for;->do(Lcom/wsw/cospa/bean/ComicContentBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$for;->if:Lcom/wsw/cospa/presenter/do;

    invoke-static {v0}, Lcom/wsw/cospa/presenter/do;->c(Lcom/wsw/cospa/presenter/do;)Landroid/support/v4/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
