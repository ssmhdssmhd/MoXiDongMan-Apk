.class public abstract Landroid/support/v4/oq;
.super Lio/reactivex/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/for<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/for;-><init>()V

    return-void
.end method

.method private Q7()Landroid/support/v4/oq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/oq<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublishClassic;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowablePublishClassic;

    .line 3
    new-instance v1, Lio/reactivex/internal/operators/flowable/s0;

    .line 4
    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishClassic;->publishSource()Lorg/reactivestreams/Publisher;

    move-result-object v2

    invoke-interface {v0}, Lio/reactivex/internal/operators/flowable/FlowablePublishClassic;->publishBufferSize()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/operators/flowable/s0;-><init>(Lorg/reactivestreams/Publisher;I)V

    .line 5
    invoke-static {v1}, Landroid/support/v4/jp1;->c(Landroid/support/v4/oq;)Landroid/support/v4/oq;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public L7()Lio/reactivex/for;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/oq;->M7(I)Lio/reactivex/for;

    move-result-object v0

    return-object v0
.end method

.method public M7(I)Lio/reactivex/for;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/oq;->N7(ILio/reactivex/functions/Consumer;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public N7(ILio/reactivex/functions/Consumer;)Lio/reactivex/for;
    .locals 1
    .param p2    # Lio/reactivex/functions/Consumer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Landroid/support/v4/oq;->P7(Lio/reactivex/functions/Consumer;)V

    .line 2
    invoke-static {p0}, Landroid/support/v4/jp1;->c(Landroid/support/v4/oq;)Landroid/support/v4/oq;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/tc0;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/tc0;-><init>(Landroid/support/v4/oq;ILio/reactivex/functions/Consumer;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final O7()Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/util/for;

    invoke-direct {v0}, Lio/reactivex/internal/util/for;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/oq;->P7(Lio/reactivex/functions/Consumer;)V

    .line 3
    iget-object v0, v0, Lio/reactivex/internal/util/for;->do:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public abstract P7(Lio/reactivex/functions/Consumer;)V
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation
.end method

.method public R7()Lio/reactivex/for;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->PASS_THROUGH:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/a1;

    invoke-direct {p0}, Landroid/support/v4/oq;->Q7()Landroid/support/v4/oq;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/a1;-><init>(Landroid/support/v4/oq;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object v0

    return-object v0
.end method

.method public final S7(I)Lio/reactivex/for;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->PASS_THROUGH:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/schedulers/do;->this()Lio/reactivex/try;

    move-result-object v5

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/oq;->U7(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final T7(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/for;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->PASS_THROUGH:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/oq;->U7(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final U7(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/for;
    .locals 8
    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->PASS_THROUGH:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriberCount"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/flowable/a1;

    invoke-direct {p0}, Landroid/support/v4/oq;->Q7()Landroid/support/v4/oq;

    move-result-object v2

    move-object v1, v0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/a1;-><init>(Landroid/support/v4/oq;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final V7(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/for;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->PASS_THROUGH:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v5

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/oq;->U7(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final W7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/for;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->PASS_THROUGH:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/oq;->U7(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method
