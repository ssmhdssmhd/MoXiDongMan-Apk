.class Lcom/wsw/cospa/activity/ComicManagerActivity$goto;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/ComicSourceBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicManagerActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$goto;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/bz1;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$goto;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->strictfp(Lcom/wsw/cospa/activity/ComicManagerActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onError(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$goto;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->strictfp(Lcom/wsw/cospa/activity/ComicManagerActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity$goto;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$goto;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->strictfp(Lcom/wsw/cospa/activity/ComicManagerActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "\u5bfc\u5165\u6210\u529f%d\u4e2a\u56fe\u6e90"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$goto;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->p()V

    .line 6
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Landroid/support/v4/k61;->case()Landroid/support/v4/k61;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v4/k61;->if([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u683c\u5f0f\u4e0d\u5bf9"

    .line 8
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$goto;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$goto;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->strictfp(Lcom/wsw/cospa/activity/ComicManagerActivity;)Landroid/support/v4/xh1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
