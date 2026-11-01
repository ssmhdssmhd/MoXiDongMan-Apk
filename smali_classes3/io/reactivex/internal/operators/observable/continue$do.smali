.class final Lio/reactivex/internal/operators/observable/continue$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/continue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/continue$do$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final do:Landroid/support/v4/tw1;

.field public for:Z

.field public final if:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic new:Lio/reactivex/internal/operators/observable/continue;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/continue;Landroid/support/v4/tw1;Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/tw1;",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/continue$do;->new:Lio/reactivex/internal/operators/observable/continue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/continue$do;->do:Landroid/support/v4/tw1;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/continue$do;->if:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/continue$do;->for:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/continue$do;->for:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/continue$do;->new:Lio/reactivex/internal/operators/observable/continue;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/continue;->do:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/continue$do$do;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/observable/continue$do$do;-><init>(Lio/reactivex/internal/operators/observable/continue$do;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/continue$do;->for:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/continue$do;->for:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/continue$do;->if:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/continue$do;->onComplete()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/continue$do;->do:Landroid/support/v4/tw1;

    invoke-virtual {v0, p1}, Landroid/support/v4/tw1;->update(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
