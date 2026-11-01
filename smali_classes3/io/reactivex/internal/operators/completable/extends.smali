.class public final Lio/reactivex/internal/operators/completable/extends;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/extends$do;
    }
.end annotation


# instance fields
.field public final do:Lio/reactivex/CompletableSource;

.field public final if:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;Lio/reactivex/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/extends;->do:Lio/reactivex/CompletableSource;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/extends;->if:Lio/reactivex/try;

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/extends$do;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/extends;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/completable/extends$do;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/CompletableSource;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/extends;->if:Lio/reactivex/try;

    invoke-virtual {p1, v0}, Lio/reactivex/try;->new(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 4
    iget-object v0, v0, Lio/reactivex/internal/operators/completable/extends$do;->task:Landroid/support/v4/tw1;

    invoke-virtual {v0, p1}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
