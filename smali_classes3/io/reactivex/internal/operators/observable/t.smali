.class public final Lio/reactivex/internal/operators/observable/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/t$class;,
        Lio/reactivex/internal/operators/observable/t$super;,
        Lio/reactivex/internal/operators/observable/t$if;,
        Lio/reactivex/internal/operators/observable/t$do;,
        Lio/reactivex/internal/operators/observable/t$catch;,
        Lio/reactivex/internal/operators/observable/t$throw;,
        Lio/reactivex/internal/operators/observable/t$else;,
        Lio/reactivex/internal/operators/observable/t$for;,
        Lio/reactivex/internal/operators/observable/t$try;,
        Lio/reactivex/internal/operators/observable/t$new;,
        Lio/reactivex/internal/operators/observable/t$goto;,
        Lio/reactivex/internal/operators/observable/t$this;,
        Lio/reactivex/internal/operators/observable/t$break;,
        Lio/reactivex/internal/operators/observable/t$case;,
        Lio/reactivex/internal/operators/observable/t$const;,
        Lio/reactivex/internal/operators/observable/t$final;
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

.method public static break(Lio/reactivex/new;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Ljava/util/concurrent/Callable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/new<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Landroid/support/v4/pq<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/observable/t$super;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/t$super;-><init>(Lio/reactivex/new;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    return-object v6
.end method

.method public static case(Lio/reactivex/Observer;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observer<",
            "TT;>;)",
            "Lio/reactivex/functions/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/t$break;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/t$break;-><init>(Lio/reactivex/Observer;)V

    return-object v0
.end method

.method public static catch(Lio/reactivex/functions/Function;Lio/reactivex/try;)Lio/reactivex/functions/Function;
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
            "Lio/reactivex/new<",
            "TT;>;+",
            "Lio/reactivex/ObservableSource<",
            "TR;>;>;",
            "Lio/reactivex/try;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/new<",
            "TT;>;",
            "Lio/reactivex/ObservableSource<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/t$class;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/t$class;-><init>(Lio/reactivex/functions/Function;Lio/reactivex/try;)V

    return-object v0
.end method

.method public static class(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/functions/BiFunction;
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
    new-instance v0, Lio/reactivex/internal/operators/observable/t$const;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/t$const;-><init>(Lio/reactivex/functions/BiConsumer;)V

    return-object v0
.end method

.method public static const(Lio/reactivex/functions/Consumer;)Lio/reactivex/functions/BiFunction;
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
    new-instance v0, Lio/reactivex/internal/operators/observable/t$final;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/t$final;-><init>(Lio/reactivex/functions/Consumer;)V

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
            "Lio/reactivex/ObservableSource<",
            "TU;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/t$for;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/t$for;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static else(Lio/reactivex/new;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/new<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "Landroid/support/v4/pq<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/t$catch;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/t$catch;-><init>(Lio/reactivex/new;)V

    return-object v0
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
            "Lio/reactivex/ObservableSource<",
            "+TT;>;>;",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/t$throw;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/t$throw;-><init>(Lio/reactivex/functions/Function;)V

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
            "Lio/reactivex/ObservableSource<",
            "TU;>;>;)",
            "Lio/reactivex/functions/Function<",
            "TT;",
            "Lio/reactivex/ObservableSource<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/t$case;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/t$case;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static goto(Lio/reactivex/new;I)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/new<",
            "TT;>;I)",
            "Ljava/util/concurrent/Callable<",
            "Landroid/support/v4/pq<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/t$do;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/t$do;-><init>(Lio/reactivex/new;I)V

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
            "Lio/reactivex/ObservableSource<",
            "+TU;>;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/functions/Function<",
            "TT;",
            "Lio/reactivex/ObservableSource<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/t$try;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/observable/t$try;-><init>(Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static new(Lio/reactivex/Observer;)Lio/reactivex/functions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observer<",
            "TT;>;)",
            "Lio/reactivex/functions/Action;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/t$goto;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/t$goto;-><init>(Lio/reactivex/Observer;)V

    return-object v0
.end method

.method public static this(Lio/reactivex/new;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Ljava/util/concurrent/Callable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/new<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Landroid/support/v4/pq<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lio/reactivex/internal/operators/observable/t$if;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/t$if;-><init>(Lio/reactivex/new;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    return-object v7
.end method

.method public static try(Lio/reactivex/Observer;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observer<",
            "TT;>;)",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/t$this;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/t$this;-><init>(Lio/reactivex/Observer;)V

    return-object v0
.end method
