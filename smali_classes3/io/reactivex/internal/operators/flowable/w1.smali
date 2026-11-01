.class public final Lio/reactivex/internal/operators/flowable/w1;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/w1$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/do<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final for:Lio/reactivex/try;

.field public final new:Z


# direct methods
.method public constructor <init>(Lio/reactivex/for;Lio/reactivex/try;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;",
            "Lio/reactivex/try;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/w1;->for:Lio/reactivex/try;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/w1;->new:Z

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w1;->for:Lio/reactivex/try;

    invoke-virtual {v0}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object v0

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/flowable/w1$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/w1;->new:Z

    invoke-direct {v1, p1, v0, v2, v3}, Lio/reactivex/internal/operators/flowable/w1$do;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/try$for;Lorg/reactivestreams/Publisher;Z)V

    .line 3
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/try$for;->if(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
