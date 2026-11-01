.class public final Lio/reactivex/internal/operators/flowable/k2;
.super Lio/reactivex/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/k2$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/for<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final for:J

.field public final if:Lio/reactivex/try;

.field public final new:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/for;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/k2;->for:J

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/k2;->new:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/k2;->if:Lio/reactivex/try;

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/k2$do;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/k2$do;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/k2;->if:Lio/reactivex/try;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/k2;->for:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/k2;->new:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/try;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/k2$do;->setResource(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
