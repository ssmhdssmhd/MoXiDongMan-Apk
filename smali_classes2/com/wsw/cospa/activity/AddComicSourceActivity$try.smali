.class Lcom/wsw/cospa/activity/AddComicSourceActivity$try;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/AddComicSourceActivity;->synchronized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Lcom/wsw/cospa/bean/ComicSourceBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AddComicSourceActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$try;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$try;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->static(Lcom/wsw/cospa/activity/AddComicSourceActivity;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->throws(Lcom/wsw/cospa/activity/AddComicSourceActivity;Lcom/wsw/cospa/bean/ComicSourceBean;)Lcom/wsw/cospa/bean/ComicSourceBean;

    const-string p1, "\u4fdd\u5b58\u6210\u529f"

    .line 2
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity$try;->do(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$try;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
