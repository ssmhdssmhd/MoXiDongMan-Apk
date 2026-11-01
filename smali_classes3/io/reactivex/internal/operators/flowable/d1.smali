.class public final Lio/reactivex/internal/operators/flowable/d1;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/d1$do;,
        Lio/reactivex/internal/operators/flowable/d1$for;,
        Lio/reactivex/internal/operators/flowable/d1$if;
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
.field public final for:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/for<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/reactivestreams/Publisher<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/for;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/for<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/reactivestreams/Publisher<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/d1;->for:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/bx1;

    invoke-direct {v0, p1}, Landroid/support/v4/bx1;-><init>(Lorg/reactivestreams/Subscriber;)V

    const/16 v1, 0x8

    .line 2
    invoke-static {v1}, Lio/reactivex/processors/else;->S7(I)Lio/reactivex/processors/else;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/processors/for;->P7()Lio/reactivex/processors/for;

    move-result-object v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/d1;->for:Lio/reactivex/functions/Function;

    invoke-interface {v2, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "handler returned a null Publisher"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reactivestreams/Publisher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v3, Lio/reactivex/internal/operators/flowable/d1$if;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    invoke-direct {v3, v4}, Lio/reactivex/internal/operators/flowable/d1$if;-><init>(Lorg/reactivestreams/Publisher;)V

    .line 5
    new-instance v4, Lio/reactivex/internal/operators/flowable/d1$do;

    invoke-direct {v4, v0, v1, v3}, Lio/reactivex/internal/operators/flowable/d1$do;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/for;Lorg/reactivestreams/Subscription;)V

    .line 6
    iput-object v4, v3, Lio/reactivex/internal/operators/flowable/d1$if;->subscriber:Lio/reactivex/internal/operators/flowable/d1$for;

    .line 7
    invoke-interface {p1, v4}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 8
    invoke-interface {v2, v3}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lio/reactivex/internal/operators/flowable/d1$if;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 11
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/do;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
