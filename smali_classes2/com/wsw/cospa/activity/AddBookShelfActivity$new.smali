.class Lcom/wsw/cospa/activity/AddBookShelfActivity$new;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/AddBookShelfActivity;->package()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/ComicShelfBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AddBookShelfActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$new;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity$new;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "\u4e0d\u80fd\u5220\u9664\u6709\u6f2b\u753b\u7684\u4e66\u67b6\uff01"

    .line 3
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$new;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->extends(Lcom/wsw/cospa/activity/AddBookShelfActivity;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->native(Ljava/lang/Long;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$new;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$new;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$new;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
