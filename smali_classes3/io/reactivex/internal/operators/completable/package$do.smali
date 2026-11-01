.class final Lio/reactivex/internal/operators/completable/package$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/package$do$do;
    }
.end annotation


# instance fields
.field private final do:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final for:Lio/reactivex/CompletableObserver;

.field public final if:Landroid/support/v4/cq;

.field public final synthetic new:Lio/reactivex/internal/operators/completable/package;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/completable/package;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/support/v4/cq;Lio/reactivex/CompletableObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/package$do;->new:Lio/reactivex/internal/operators/completable/package;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/package$do;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/package$do;->if:Landroid/support/v4/cq;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/package$do;->for:Lio/reactivex/CompletableObserver;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/package$do;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/package$do;->if:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->if()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/package$do;->new:Lio/reactivex/internal/operators/completable/package;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/package;->try:Lio/reactivex/CompletableSource;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/package$do;->for:Lio/reactivex/CompletableObserver;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    iget-object v2, p0, Lio/reactivex/internal/operators/completable/package$do;->new:Lio/reactivex/internal/operators/completable/package;

    iget-wide v3, v2, Lio/reactivex/internal/operators/completable/package;->if:J

    iget-object v2, v2, Lio/reactivex/internal/operators/completable/package;->for:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v2}, Lio/reactivex/internal/util/case;->try(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/completable/package$do$do;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/completable/package$do$do;-><init>(Lio/reactivex/internal/operators/completable/package$do;)V

    invoke-interface {v0, v1}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    :cond_1
    :goto_0
    return-void
.end method
