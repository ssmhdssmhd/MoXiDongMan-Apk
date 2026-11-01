.class public final Lio/reactivex/internal/operators/parallel/class;
.super Landroid/support/v4/ub1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/class$for;,
        Lio/reactivex/internal/operators/parallel/class$new;,
        Lio/reactivex/internal/operators/parallel/class$do;,
        Lio/reactivex/internal/operators/parallel/class$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/ub1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Landroid/support/v4/ub1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/ub1<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final for:I

.field public final if:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Landroid/support/v4/ub1;Lio/reactivex/try;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/ub1<",
            "+TT;>;",
            "Lio/reactivex/try;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/ub1;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/class;->do:Landroid/support/v4/ub1;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/class;->if:Lio/reactivex/try;

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/parallel/class;->for:I

    return-void
.end method


# virtual methods
.method public h(I[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;Lio/reactivex/try$for;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;[",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;",
            "Lio/reactivex/try$for;",
            ")V"
        }
    .end annotation

    .line 1
    aget-object p2, p2, p1

    .line 2
    new-instance v0, Landroid/support/v4/b12;

    iget v1, p0, Lio/reactivex/internal/operators/parallel/class;->for:I

    invoke-direct {v0, v1}, Landroid/support/v4/b12;-><init>(I)V

    .line 3
    instance-of v1, p2, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lio/reactivex/internal/operators/parallel/class$for;

    check-cast p2, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/parallel/class;->for:I

    invoke-direct {v1, p2, v2, v0, p4}, Lio/reactivex/internal/operators/parallel/class$for;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;ILandroid/support/v4/b12;Lio/reactivex/try$for;)V

    aput-object v1, p3, p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/parallel/class$new;

    iget v2, p0, Lio/reactivex/internal/operators/parallel/class;->for:I

    invoke-direct {v1, p2, v2, v0, p4}, Lio/reactivex/internal/operators/parallel/class$new;-><init>(Lorg/reactivestreams/Subscriber;ILandroid/support/v4/b12;Lio/reactivex/try$for;)V

    aput-object v1, p3, p1

    :goto_0
    return-void
.end method

.method public strictfp()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/class;->do:Landroid/support/v4/ub1;

    invoke-virtual {v0}, Landroid/support/v4/ub1;->strictfp()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ub1;->g([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    .line 3
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/class;->if:Lio/reactivex/try;

    instance-of v3, v2, Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport;

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport;

    .line 6
    new-instance v3, Lio/reactivex/internal/operators/parallel/class$if;

    invoke-direct {v3, p0, p1, v1}, Lio/reactivex/internal/operators/parallel/class$if;-><init>(Lio/reactivex/internal/operators/parallel/class;[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;)V

    invoke-interface {v2, v0, v3}, Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport;->createWorkers(ILio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    iget-object v3, p0, Lio/reactivex/internal/operators/parallel/class;->if:Lio/reactivex/try;

    invoke-virtual {v3}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v1, v3}, Lio/reactivex/internal/operators/parallel/class;->h(I[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;Lio/reactivex/try$for;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/class;->do:Landroid/support/v4/ub1;

    invoke-virtual {p1, v1}, Landroid/support/v4/ub1;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
