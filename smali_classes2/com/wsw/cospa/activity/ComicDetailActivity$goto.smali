.class Lcom/wsw/cospa/activity/ComicDetailActivity$goto;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicDetailActivity;->private()V
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
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->C()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->continue(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->strictfp(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->i(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->j(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->strictfp(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterName(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->i(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setLastChapterName(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->k(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapter(Ljava/lang/Integer;)V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->l(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterPage(Ljava/lang/Integer;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->n(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicInfoBean;)Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->T(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->v()V

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->p(Lcom/wsw/cospa/activity/ComicDetailActivity;Ljava/util/List;)Ljava/util/List;

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->transient(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->implements(Lcom/wsw/cospa/activity/ComicDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->n(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 15
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->P(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$goto;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
