.class public final Lio/reactivex/internal/operators/completable/package;
.super Landroid/support/v4/np;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/package$do;,
        Lio/reactivex/internal/operators/completable/package$if;
    }
.end annotation


# instance fields
.field public final do:Lio/reactivex/CompletableSource;

.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J

.field public final new:Lio/reactivex/try;

.field public final try:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/CompletableSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/package;->do:Lio/reactivex/CompletableSource;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/completable/package;->if:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/package;->for:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/completable/package;->new:Lio/reactivex/try;

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/completable/package;->try:Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/package;->new:Lio/reactivex/try;

    new-instance v3, Lio/reactivex/internal/operators/completable/package$do;

    invoke-direct {v3, p0, v1, v0, p1}, Lio/reactivex/internal/operators/completable/package$do;-><init>(Lio/reactivex/internal/operators/completable/package;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/support/v4/cq;Lio/reactivex/CompletableObserver;)V

    iget-wide v4, p0, Lio/reactivex/internal/operators/completable/package;->if:J

    iget-object v6, p0, Lio/reactivex/internal/operators/completable/package;->for:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/reactivex/try;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 6
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/package;->do:Lio/reactivex/CompletableSource;

    new-instance v3, Lio/reactivex/internal/operators/completable/package$if;

    invoke-direct {v3, v0, v1, p1}, Lio/reactivex/internal/operators/completable/package$if;-><init>(Landroid/support/v4/cq;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/CompletableObserver;)V

    invoke-interface {v2, v3}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
