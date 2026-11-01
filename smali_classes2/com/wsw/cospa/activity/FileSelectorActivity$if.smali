.class Lcom/wsw/cospa/activity/FileSelectorActivity$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/FileSelectorActivity;->continue(Lcom/wsw/cospa/bean/RipeFile;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "Lcom/wsw/cospa/bean/FileSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/FileSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/FileSelectorActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$if;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/FileSnapshot;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$if;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->hideProgress()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$if;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->private(Lcom/wsw/cospa/bean/FileSnapshot;Z)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$if;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->hideProgress()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$if;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->static(Lcom/wsw/cospa/activity/FileSelectorActivity;)Landroid/support/v4/cq;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$if;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-static {v1, p1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->return(Lcom/wsw/cospa/activity/FileSelectorActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/FileSnapshot;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/FileSelectorActivity$if;->do(Lcom/wsw/cospa/bean/FileSnapshot;)V

    return-void
.end method
