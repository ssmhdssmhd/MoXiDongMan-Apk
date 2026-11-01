.class public final Lio/reactivex/internal/operators/completable/try;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/try$do;
    }
.end annotation


# instance fields
.field public final do:[Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>([Lio/reactivex/CompletableSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/try;->do:[Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/try$do;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/try;->do:[Lio/reactivex/CompletableSource;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/completable/try$do;-><init>(Lio/reactivex/CompletableObserver;[Lio/reactivex/CompletableSource;)V

    .line 2
    iget-object v1, v0, Lio/reactivex/internal/operators/completable/try$do;->sd:Landroid/support/v4/tw1;

    invoke-interface {p1, v1}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/operators/completable/try$do;->next()V

    return-void
.end method
