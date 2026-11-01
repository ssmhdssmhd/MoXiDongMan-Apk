.class final Lio/reactivex/internal/operators/observable/continue$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/continue$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lio/reactivex/internal/operators/observable/continue$do;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/continue$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/continue$do$do;->do:Lio/reactivex/internal/operators/observable/continue$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/continue$do$do;->do:Lio/reactivex/internal/operators/observable/continue$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/continue$do;->if:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/continue$do$do;->do:Lio/reactivex/internal/operators/observable/continue$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/continue$do;->if:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/continue$do$do;->do:Lio/reactivex/internal/operators/observable/continue$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/continue$do;->if:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/continue$do$do;->do:Lio/reactivex/internal/operators/observable/continue$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/continue$do;->do:Landroid/support/v4/tw1;

    invoke-virtual {v0, p1}, Landroid/support/v4/tw1;->update(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
