.class Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->transient(Ljava/lang/String;)V
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
.field public final synthetic do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/bz1;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->default(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->default(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onError(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->default(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)Landroid/support/v4/xh1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->default(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)Landroid/support/v4/xh1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 1

    const-string p1, "\u52a0\u5bc6\u5b8c\u6210"

    .line 2
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$for;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
