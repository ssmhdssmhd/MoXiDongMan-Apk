.class public abstract Landroid/support/v4/ub1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static default(Lorg/reactivestreams/Publisher;)Landroid/support/v4/ub1;
    .locals 2
    .param p0    # Lorg/reactivestreams/Publisher;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/support/v4/ub1;->finally(Lorg/reactivestreams/Publisher;II)Landroid/support/v4/ub1;

    move-result-object p0

    return-object p0
.end method

.method public static extends(Lorg/reactivestreams/Publisher;I)Landroid/support/v4/ub1;
    .locals 1
    .param p0    # Lorg/reactivestreams/Publisher;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;I)",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/support/v4/ub1;->finally(Lorg/reactivestreams/Publisher;II)Landroid/support/v4/ub1;

    move-result-object p0

    return-object p0
.end method

.method public static finally(Lorg/reactivestreams/Publisher;II)Landroid/support/v4/ub1;
    .locals 1
    .param p0    # Lorg/reactivestreams/Publisher;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;II)",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "parallelism"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/parallel/try;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/try;-><init>(Lorg/reactivestreams/Publisher;II)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p0

    return-object p0
.end method

.method public static varargs package([Lorg/reactivestreams/Publisher;)Landroid/support/v4/ub1;
    .locals 1
    .param p0    # [Lorg/reactivestreams/Publisher;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;)",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/vb1;

    invoke-direct {v0, p0}, Landroid/support/v4/vb1;-><init>([Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zero publishers not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(I)Lio/reactivex/for;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->FULL:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "prefetch"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/case;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/parallel/case;-><init>(Landroid/support/v4/ub1;IZ)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final abstract(Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/BiFunction;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/do;",
            ">;)",
            "Landroid/support/v4/ub1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/goto;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/goto;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/Comparator;)Lio/reactivex/for;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/ub1;->c(Ljava/util/Comparator;I)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final break(Lio/reactivex/functions/Action;)Landroid/support/v4/ub1;
    .locals 11
    .param p1    # Lio/reactivex/functions/Action;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onCancel is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/this;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v5

    sget-object v7, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    .line 6
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/functions/do;->else:Lio/reactivex/functions/LongConsumer;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v7

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/this;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    .line 7
    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/Comparator;I)Lio/reactivex/for;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/ub1;->strictfp()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    .line 4
    invoke-static {p2}, Lio/reactivex/internal/functions/do;->case(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/util/goto;->instance()Lio/reactivex/functions/BiFunction;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/ub1;->volatile(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/ub1;

    move-result-object p2

    .line 5
    new-instance v0, Lio/reactivex/internal/util/catch;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/catch;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/ub1;->private(Lio/reactivex/functions/Function;)Landroid/support/v4/ub1;

    move-result-object p2

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/parallel/const;

    invoke-direct {v0, p2, p1}, Lio/reactivex/internal/operators/parallel/const;-><init>(Landroid/support/v4/ub1;Ljava/util/Comparator;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final case(Lio/reactivex/functions/Function;IZ)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;IZ)",
            "Landroid/support/v4/ub1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 3
    new-instance v0, Landroid/support/v4/sb1;

    if-eqz p3, :cond_0

    sget-object p3, Lio/reactivex/internal/util/try;->END:Lio/reactivex/internal/util/try;

    goto :goto_0

    :cond_0
    sget-object p3, Lio/reactivex/internal/util/try;->BOUNDARY:Lio/reactivex/internal/util/try;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/sb1;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final catch(Lio/reactivex/functions/Action;)Landroid/support/v4/ub1;
    .locals 11
    .param p1    # Lio/reactivex/functions/Action;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onComplete is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/this;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v5

    sget-object v10, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    .line 6
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/functions/do;->else:Lio/reactivex/functions/LongConsumer;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/this;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    .line 7
    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final class(Lio/reactivex/functions/Consumer;)Landroid/support/v4/ub1;
    .locals 11
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onError is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/this;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v10, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/functions/do;->else:Lio/reactivex/functions/LongConsumer;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/this;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    .line 6
    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final const(Lio/reactivex/functions/Consumer;)Landroid/support/v4/ub1;
    .locals 11
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/this;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v4

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v5

    sget-object v10, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/functions/do;->else:Lio/reactivex/functions/LongConsumer;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/this;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    .line 6
    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final continue(Lio/reactivex/functions/Function;Lio/reactivex/parallel/do;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/parallel/do;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;",
            "Lio/reactivex/parallel/do;",
            ")",
            "Landroid/support/v4/ub1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/goto;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/goto;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lio/reactivex/functions/Function;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Landroid/support/v4/ub1<",
            "TT;>;TU;>;)TU;"
        }
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/functions/Function;

    invoke-interface {p1, p0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p1}, Lio/reactivex/internal/util/case;->case(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final do(Lio/reactivex/parallel/ParallelFlowableConverter;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/parallel/ParallelFlowableConverter;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/parallel/ParallelFlowableConverter<",
            "TT;TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/parallel/ParallelFlowableConverter;

    invoke-interface {p1, p0}, Lio/reactivex/parallel/ParallelFlowableConverter;->apply(Landroid/support/v4/ub1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/util/Comparator;)Lio/reactivex/for;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/for<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/ub1;->f(Ljava/util/Comparator;I)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final else(Lio/reactivex/functions/Function;Z)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;Z)",
            "Landroid/support/v4/ub1<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/ub1;->case(Lio/reactivex/functions/Function;IZ)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/util/Comparator;I)Lio/reactivex/for;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Lio/reactivex/for<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/ub1;->strictfp()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    .line 4
    invoke-static {p2}, Lio/reactivex/internal/functions/do;->case(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/util/goto;->instance()Lio/reactivex/functions/BiFunction;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/ub1;->volatile(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/ub1;

    move-result-object p2

    .line 5
    new-instance v0, Lio/reactivex/internal/util/catch;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/catch;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/ub1;->private(Lio/reactivex/functions/Function;)Landroid/support/v4/ub1;

    move-result-object p2

    .line 6
    new-instance v0, Lio/reactivex/internal/util/this;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/this;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/ub1;->interface(Lio/reactivex/functions/BiFunction;)Lio/reactivex/for;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final final(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/BiFunction;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/do;",
            ">;)",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/if;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/if;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final for(Lio/reactivex/parallel/ParallelTransformer;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/parallel/ParallelTransformer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/parallel/ParallelTransformer<",
            "TT;TU;>;)",
            "Landroid/support/v4/ub1<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/parallel/ParallelTransformer;

    invoke-interface {p1, p0}, Lio/reactivex/parallel/ParallelTransformer;->apply(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final g([Lorg/reactivestreams/Subscriber;)Z
    .locals 5
    .param p1    # [Lorg/reactivestreams/Subscriber;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ub1;->strictfp()I

    move-result v0

    .line 2
    array-length v1, p1

    if-eq v1, v0, :cond_1

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parallelism = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subscribers = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 4
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    .line 5
    invoke-static {v1, v4}, Lio/reactivex/internal/subscriptions/do;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final goto(Lio/reactivex/functions/Consumer;)Landroid/support/v4/ub1;
    .locals 11
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/this;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v5

    sget-object v10, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/functions/do;->else:Lio/reactivex/functions/LongConsumer;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/this;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    .line 6
    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final if(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiConsumer;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/BiConsumer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TC;>;",
            "Lio/reactivex/functions/BiConsumer<",
            "-TC;-TT;>;)",
            "Landroid/support/v4/ub1<",
            "TC;>;"
        }
    .end annotation

    const-string v0, "collectionSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/do;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/do;-><init>(Landroid/support/v4/ub1;Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiConsumer;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final implements()Lio/reactivex/for;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->FULL:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/ub1;->instanceof(I)Lio/reactivex/for;

    move-result-object v0

    return-object v0
.end method

.method public final import(Lio/reactivex/functions/Predicate;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/functions/Predicate;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/for;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/parallel/for;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Predicate;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final instanceof(I)Lio/reactivex/for;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->FULL:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "prefetch"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/case;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/parallel/case;-><init>(Landroid/support/v4/ub1;IZ)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final interface(Lio/reactivex/functions/BiFunction;)Lio/reactivex/for;
    .locals 1
    .param p1    # Lio/reactivex/functions/BiFunction;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reducer"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/catch;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/parallel/catch;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final native(Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/functions/Predicate;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/BiFunction;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/do;",
            ">;)",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/new;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/new;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final new(Lio/reactivex/functions/Function;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;)",
            "Landroid/support/v4/ub1<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/ub1;->try(Lio/reactivex/functions/Function;I)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final private(Lio/reactivex/functions/Function;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;)",
            "Landroid/support/v4/ub1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/else;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/parallel/else;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final protected(Lio/reactivex/try;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/try;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/try;",
            ")",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/ub1;->transient(Lio/reactivex/try;I)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final public(Lio/reactivex/functions/Predicate;Lio/reactivex/parallel/do;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/functions/Predicate;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/parallel/do;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;",
            "Lio/reactivex/parallel/do;",
            ")",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/new;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/new;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final return(Lio/reactivex/functions/Function;)Landroid/support/v4/ub1;
    .locals 3
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;)",
            "Landroid/support/v4/ub1<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v4/ub1;->throws(Lio/reactivex/functions/Function;ZII)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final static(Lio/reactivex/functions/Function;Z)Landroid/support/v4/ub1;
    .locals 2
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;Z)",
            "Landroid/support/v4/ub1<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/support/v4/ub1;->throws(Lio/reactivex/functions/Function;ZII)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public abstract strictfp()I
.end method

.method public abstract subscribe([Lorg/reactivestreams/Subscriber;)V
    .param p1    # [Lorg/reactivestreams/Subscriber;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final super(Lio/reactivex/functions/Consumer;Lio/reactivex/parallel/do;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/parallel/do;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/parallel/do;",
            ")",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/if;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/if;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final switch(Lio/reactivex/functions/Function;ZI)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;ZI)",
            "Landroid/support/v4/ub1<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/ub1;->throws(Lio/reactivex/functions/Function;ZII)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final synchronized()Lio/reactivex/for;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->FULL:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/ub1;->a(I)Lio/reactivex/for;

    move-result-object v0

    return-object v0
.end method

.method public final this(Lio/reactivex/functions/Action;)Landroid/support/v4/ub1;
    .locals 11
    .param p1    # Lio/reactivex/functions/Action;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterTerminate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/this;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v5

    sget-object v10, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    .line 6
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/functions/do;->else:Lio/reactivex/functions/LongConsumer;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/this;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    .line 7
    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final throw(Lio/reactivex/functions/LongConsumer;)Landroid/support/v4/ub1;
    .locals 11
    .param p1    # Lio/reactivex/functions/LongConsumer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/LongConsumer;",
            ")",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onRequest is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/this;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v5

    sget-object v10, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    .line 6
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v8

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, v10

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/this;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    .line 7
    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final throws(Lio/reactivex/functions/Function;ZII)Landroid/support/v4/ub1;
    .locals 7
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;ZII)",
            "Landroid/support/v4/ub1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 3
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 4
    new-instance v0, Landroid/support/v4/tb1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/tb1;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Function;ZII)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final transient(Lio/reactivex/try;I)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Lio/reactivex/try;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/try;",
            "I)",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/class;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/class;-><init>(Landroid/support/v4/ub1;Lio/reactivex/try;I)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final try(Lio/reactivex/functions/Function;I)Landroid/support/v4/ub1;
    .locals 2
    .param p1    # Lio/reactivex/functions/Function;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;I)",
            "Landroid/support/v4/ub1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 3
    new-instance v0, Landroid/support/v4/sb1;

    sget-object v1, Lio/reactivex/internal/util/try;->IMMEDIATE:Lio/reactivex/internal/util/try;

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/support/v4/sb1;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final volatile(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/ub1;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/BiFunction;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;)",
            "Landroid/support/v4/ub1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "initialSupplier"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/break;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/break;-><init>(Landroid/support/v4/ub1;Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method

.method public final while(Lio/reactivex/functions/Consumer;)Landroid/support/v4/ub1;
    .locals 11
    .param p1    # Lio/reactivex/functions/Consumer;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lorg/reactivestreams/Subscription;",
            ">;)",
            "Landroid/support/v4/ub1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/this;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v5

    sget-object v10, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    sget-object v9, Lio/reactivex/internal/functions/do;->else:Lio/reactivex/functions/LongConsumer;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, v10

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/this;-><init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/LongConsumer;Lio/reactivex/functions/Action;)V

    .line 6
    invoke-static {v0}, Landroid/support/v4/jp1;->f(Landroid/support/v4/ub1;)Landroid/support/v4/ub1;

    move-result-object p1

    return-object p1
.end method
