.class public final Lio/reactivex/internal/operators/observable/b2;
.super Lio/reactivex/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/b2$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/new<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lio/reactivex/try;

.field public final for:Ljava/util/concurrent/TimeUnit;

.field public final if:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/new;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/b2;->if:J

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/b2;->for:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/b2;->do:Lio/reactivex/try;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/b2$do;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/b2$do;-><init>(Lio/reactivex/Observer;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/b2;->do:Lio/reactivex/try;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/b2;->if:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/b2;->for:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/try;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/b2$do;->setResource(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
