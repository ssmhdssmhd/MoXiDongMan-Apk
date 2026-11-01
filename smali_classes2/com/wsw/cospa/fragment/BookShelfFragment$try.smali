.class Lcom/wsw/cospa/fragment/BookShelfFragment$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/BookShelfFragment;->p()V
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
.field public final synthetic do:Lcom/wsw/cospa/bean/ComicShelfBean;

.field public final synthetic for:Lcom/wsw/cospa/fragment/BookShelfFragment;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->for:Lcom/wsw/cospa/fragment/BookShelfFragment;

    iput-object p2, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    iput p3, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->if:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ComicShelfBean name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "refreshBookshelf"

    invoke-static {v1, v0}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setLoading(Z)V

    .line 3
    iget v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->if:I

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setHasUpdate(Ljava/lang/Boolean;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->for:Lcom/wsw/cospa/fragment/BookShelfFragment;

    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {p1, v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->static(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->for:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->switch(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setLoading(Z)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setHasUpdate(Ljava/lang/Boolean;)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->for:Lcom/wsw/cospa/fragment/BookShelfFragment;

    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {p1, v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->static(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->for:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->switch(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->do(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$try;->for:Lcom/wsw/cospa/fragment/BookShelfFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/BookShelfFragment;->return:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
