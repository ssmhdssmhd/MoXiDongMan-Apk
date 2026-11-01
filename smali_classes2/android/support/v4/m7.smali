.class public abstract Landroid/support/v4/m7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/wsw/cospa/base/BaseView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public do:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "TV;>;"
        }
    .end annotation
.end field

.field public if:Landroid/support/v4/cq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/cq;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->if()V

    :cond_0
    return-void
.end method

.method public do(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/m7;->if:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public for()Lcom/wsw/cospa/base/BaseView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/m7;->do:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/base/BaseView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public if(Lcom/wsw/cospa/base/BaseView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/m7;->do:Ljava/lang/ref/Reference;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/m7;->new()V

    return-void
.end method

.method public abstract new()V
.end method

.method public try()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/m7;->case()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/m7;->do:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/support/v4/m7;->do:Ljava/lang/ref/Reference;

    :cond_0
    return-void
.end method
