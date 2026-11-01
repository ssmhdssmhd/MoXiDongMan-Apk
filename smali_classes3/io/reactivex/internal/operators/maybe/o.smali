.class public final Lio/reactivex/internal/operators/maybe/o;
.super Landroid/support/v4/fy0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/o$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/fy0<",
        "Ljava/lang/Long;",
        ">;"
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
    invoke-direct {p0}, Landroid/support/v4/fy0;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/maybe/o;->do:J

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/o;->if:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/maybe/o;->for:Lio/reactivex/try;

    return-void
.end method


# virtual methods
.method public w0(Lio/reactivex/MaybeObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/o$do;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/o$do;-><init>(Lio/reactivex/MaybeObserver;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/o;->for:Lio/reactivex/try;

    iget-wide v1, p0, Lio/reactivex/internal/operators/maybe/o;->do:J

    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/o;->if:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/try;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/maybe/o$do;->setFuture(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
