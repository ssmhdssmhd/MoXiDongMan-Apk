.class Lcom/wsw/cospa/activity/ComicDetailActivity$new;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicDetailActivity;->A(Lcom/wsw/cospa/bean/SearchComicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Lcom/wsw/cospa/bean/ComicShelfBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$new;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$new;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->z(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u5f53\u524d\u6f2b\u753b\u65e0\u6cd5\u83b7\u53d6\u7ae0\u8282\uff0c\u8bf7\u9009\u62e9\u5176\u4ed6\u6e90\uff01"

    .line 4
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$new;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->C()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$new;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->P(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity$new;->do(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$new;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
