.class public final Lio/reactivex/internal/operators/flowable/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/u$goto;,
        Lio/reactivex/internal/operators/flowable/u$super;,
        Lio/reactivex/internal/operators/flowable/u$if;,
        Lio/reactivex/internal/operators/flowable/u$do;,
        Lio/reactivex/internal/operators/flowable/u$else;,
        Lio/reactivex/internal/operators/flowable/u$throw;,
        Lio/reactivex/internal/operators/flowable/u$this;,
        Lio/reactivex/internal/operators/flowable/u$for;,
        Lio/reactivex/internal/operators/flowable/u$try;,
        Lio/reactivex/internal/operators/flowable/u$new;,
        Lio/reactivex/internal/operators/flowable/u$class;,
        Lio/reactivex/internal/operators/flowable/u$const;,
        Lio/reactivex/internal/operators/flowable/u$final;,
        Lio/reactivex/internal/operators/flowable/u$case;,
        Lio/reactivex/internal/operators/flowable/u$break;,
        Lio/reactivex/internal/operators/flowable/u$catch;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static break(Lio/reactivex/functions/Consumer;)Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Consumer<",
            "Lio/reactivex/Emitter<",
            "TT;>;>;)",
            "Lio/reactivex/functions/BiFunction<",
            "TS;",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/u$catch;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/u$catch;-><init>(Lio/reactivex/functions/Consumer;)V

    return-object v0
.end method

.method public static case(Lio/reactivex/for;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Ljava/util/concurrent/Callable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/for<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Landroid/support/v4/oq<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lio/reactivex/internal/operators/flowable/u$if;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/u$if;-><init>(Lio/reactivex/for;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    return-object v7
.end method

.method public static catch(Lorg/reactivestreams/Subscriber;)Lio/reactivex/functions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;)",
            "Lio/reactivex/functions/Action;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/u$class;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/u$class;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method

.method public static class(Lorg/reactivestreams/Subscriber;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;)",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/u$const;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/u$const;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method

.method public static const(Lorg/reactivestreams/Subscriber;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;)",
            "Lio/reactivex/functions/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/u$final;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/u$final;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method

.method public static do(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/functions/Function<",
            "TT;",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/u$for;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/u$for;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static else(Lio/reactivex/for;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Ljava/util/concurrent/Callable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/for<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Landroid/support/v4/oq<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/flowable/u$super;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/u$super;-><init>(Lio/reactivex/for;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    return-object v6
.end method

.method public static final(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/List<",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;>;",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/u$throw;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/u$throw;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static for(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;>;)",
            "Lio/reactivex/functions/Function<",
            "TT;",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/u$case;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/u$case;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static goto(Lio/reactivex/functions/Function;Lio/reactivex/try;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/for<",
            "TT;>;+",
            "Lorg/reactivestreams/Publisher<",
            "TR;>;>;",
            "Lio/reactivex/try;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/for<",
            "TT;>;",
            "Lorg/reactivestreams/Publisher<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/u$goto;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/u$goto;-><init>(Lio/reactivex/functions/Function;Lio/reactivex/try;)V

    return-object v0
.end method

.method public static if(Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TU;>;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/functions/Function<",
            "TT;",
            "Lorg/reactivestreams/Publisher<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/u$try;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/flowable/u$try;-><init>(Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static new(Lio/reactivex/for;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/for<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "Landroid/support/v4/oq<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/u$else;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/u$else;-><init>(Lio/reactivex/for;)V

    return-object v0
.end method

.method public static this(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/BiConsumer<",
            "TS;",
            "Lio/reactivex/Emitter<",
            "TT;>;>;)",
            "Lio/reactivex/functions/BiFunction<",
            "TS;",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/u$break;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/u$break;-><init>(Lio/reactivex/functions/BiConsumer;)V

    return-object v0
.end method

.method public static try(Lio/reactivex/for;I)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/for<",
            "TT;>;I)",
            "Ljava/util/concurrent/Callable<",
            "Landroid/support/v4/oq<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/u$do;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/u$do;-><init>(Lio/reactivex/for;I)V

    return-object v0
.end method
