.class Lcom/wsw/cospa/activity/LocalPreviewActivity$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/LocalPreviewActivity;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "Lcom/wsw/cospa/bean/RipeFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/LocalPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$for;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/RipeFile;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$for;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->v0(Lcom/wsw/cospa/bean/RipeFile;ZZ)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$for;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->z(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Landroid/support/v4/cq;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$for;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v1, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->d(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity$for;->do(Lcom/wsw/cospa/bean/RipeFile;)V

    return-void
.end method
