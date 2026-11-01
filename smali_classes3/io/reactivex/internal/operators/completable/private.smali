.class public final Lio/reactivex/internal/operators/completable/private;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/private$do;
    }
.end annotation


# instance fields
.field public final do:J

.field public final for:Lio/reactivex/try;

.field public final if:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/completable/private;->do:J

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/private;->if:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/private;->for:Lio/reactivex/try;

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 4

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/private$do;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/completable/private$do;-><init>(Lio/reactivex/CompletableObserver;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/private;->for:Lio/reactivex/try;

    iget-wide v1, p0, Lio/reactivex/internal/operators/completable/private;->do:J

    iget-object v3, p0, Lio/reactivex/internal/operators/completable/private;->if:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/try;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/completable/private$do;->setFuture(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
