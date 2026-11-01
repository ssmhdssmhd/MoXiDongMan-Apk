.class public abstract Landroid/support/v4/sy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private do:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final do()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/sy;->do:Lio/reactivex/disposables/Disposable;

    .line 2
    sget-object v1, Lio/reactivex/internal/disposables/do;->DISPOSED:Lio/reactivex/internal/disposables/do;

    iput-object v1, p0, Landroid/support/v4/sy;->do:Lio/reactivex/disposables/Disposable;

    .line 3
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public if()V
    .locals 0

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroid/support/v4/sy;->do:Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/support/v4/v70;->try(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Landroid/support/v4/sy;->do:Lio/reactivex/disposables/Disposable;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/sy;->if()V

    :cond_0
    return-void
.end method
