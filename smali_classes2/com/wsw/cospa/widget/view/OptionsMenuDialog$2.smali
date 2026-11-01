.class Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->clearShelf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;->this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "\u4e66\u67b6\u6e05\u7a7a\u5931\u8d25"

    .line 1
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;->this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;->this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    iget-object p1, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;->this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    iget-object p1, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;->this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;->this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;->this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    iget-object p1, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;->this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    iget-object p1, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;->this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;->this$0:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    iput-object p1, v0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
