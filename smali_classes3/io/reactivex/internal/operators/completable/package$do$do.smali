.class final Lio/reactivex/internal/operators/completable/package$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/package$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final synthetic do:Lio/reactivex/internal/operators/completable/package$do;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/completable/package$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/package$do$do;->do:Lio/reactivex/internal/operators/completable/package$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/package$do$do;->do:Lio/reactivex/internal/operators/completable/package$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/package$do;->if:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/package$do$do;->do:Lio/reactivex/internal/operators/completable/package$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/package$do;->for:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/package$do$do;->do:Lio/reactivex/internal/operators/completable/package$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/package$do;->if:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/package$do$do;->do:Lio/reactivex/internal/operators/completable/package$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/package$do;->for:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/package$do$do;->do:Lio/reactivex/internal/operators/completable/package$do;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/package$do;->if:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
