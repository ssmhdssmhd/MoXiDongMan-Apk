.class public final Lio/reactivex/internal/operators/completable/finally;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/finally$do;
    }
.end annotation


# instance fields
.field public final do:Landroid/support/v4/np;

.field public final if:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Landroid/support/v4/np;Lio/reactivex/CompletableSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/finally;->do:Landroid/support/v4/np;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/finally;->if:Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/finally$do;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/completable/finally$do;-><init>(Lio/reactivex/CompletableObserver;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/finally;->if:Lio/reactivex/CompletableSource;

    iget-object v1, v0, Lio/reactivex/internal/operators/completable/finally$do;->other:Lio/reactivex/internal/operators/completable/finally$do$do;

    invoke-interface {p1, v1}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/finally;->do:Landroid/support/v4/np;

    invoke-virtual {p1, v0}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
