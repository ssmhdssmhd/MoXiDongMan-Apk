.class public abstract Landroid/support/v4/np;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private V(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 8
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/package;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/completable/package;-><init>(Lio/reactivex/CompletableSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public static W(JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/np;->X(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static X(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/private;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/completable/private;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lio/reactivex/functions/Action;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/sp;

    invoke-direct {v0, p0}, Landroid/support/v4/sp;-><init>(Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/concurrent/Callable;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/tp;

    invoke-direct {v0, p0}, Landroid/support/v4/tp;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method private static b0(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Future;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/internal/functions/do;->break(Ljava/util/concurrent/Future;)Lio/reactivex/functions/Action;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/np;->a(Lio/reactivex/functions/Action;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lio/reactivex/MaybeSource;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT;>;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "maybe is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/implements;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/implements;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static do(Ljava/lang/Iterable;)Landroid/support/v4/np;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/do;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/completable/do;-><init>([Lio/reactivex/CompletableSource;Ljava/lang/Iterable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lio/reactivex/ObservableSource;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "observable is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/const;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/const;-><init>(Lio/reactivex/ObservableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->UNBOUNDED_IN:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "publisher is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/final;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/final;-><init>(Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static f0(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Landroid/support/v4/np;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/support/v4/vp;

    invoke-direct {v0, p0}, Landroid/support/v4/vp;-><init>(Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use of unsafeCreate(Completable)!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljava/lang/Runnable;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/up;

    invoke-direct {v0, p0}, Landroid/support/v4/up;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lio/reactivex/SingleSource;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/SingleSource<",
            "TT;>;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "single is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/super;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/super;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static h0(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
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
            "Lio/reactivex/functions/Function<",
            "-TR;+",
            "Lio/reactivex/CompletableSource;",
            ">;",
            "Lio/reactivex/functions/Consumer<",
            "-TR;>;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/np;->i0(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static i0(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
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
            "Lio/reactivex/functions/Function<",
            "-TR;+",
            "Lio/reactivex/CompletableSource;",
            ">;",
            "Lio/reactivex/functions/Consumer<",
            "-TR;>;Z)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "completableFunction is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/completable/strictfp;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/completable/strictfp;-><init>(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static varargs if([Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/support/v4/np;->super()Landroid/support/v4/np;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/support/v4/np;->j0(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/completable/do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/completable/do;-><init>([Lio/reactivex/CompletableSource;Ljava/lang/Iterable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static import(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;
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
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/np;->native(Lorg/reactivestreams/Publisher;I)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static instanceof(Ljava/lang/Throwable;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "error is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/qp;

    invoke-direct {v0, p0}, Landroid/support/v4/qp;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static j0(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Landroid/support/v4/np;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/support/v4/np;

    invoke-static {p0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Landroid/support/v4/vp;

    invoke-direct {v0, p0}, Landroid/support/v4/vp;-><init>(Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/Iterable;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/return;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/return;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;
    .locals 2
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->UNBOUNDED_IN:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/support/v4/np;->o(Lorg/reactivestreams/Publisher;IZ)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lorg/reactivestreams/Publisher;I)Landroid/support/v4/np;
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
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;I)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/support/v4/np;->o(Lorg/reactivestreams/Publisher;IZ)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static native(Lorg/reactivestreams/Publisher;I)Landroid/support/v4/np;
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
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;I)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/new;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/new;-><init>(Lorg/reactivestreams/Publisher;I)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method private static o(Lorg/reactivestreams/Publisher;IZ)Landroid/support/v4/np;
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
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;IZ)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/while;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/completable/while;-><init>(Lorg/reactivestreams/Publisher;IZ)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static varargs p([Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/support/v4/np;->super()Landroid/support/v4/np;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/support/v4/np;->j0(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/completable/import;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/import;-><init>([Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method private protected(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)Landroid/support/v4/np;
    .locals 9
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            ")",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onTerminate is null"

    .line 4
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 5
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 6
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lio/reactivex/internal/operators/completable/throws;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/completable/throws;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public static varargs public([Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/support/v4/np;->super()Landroid/support/v4/np;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/support/v4/np;->j0(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/completable/try;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/try;-><init>([Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static varargs q([Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/native;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/native;-><init>([Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/Iterable;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/public;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/public;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;
    .locals 2
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Landroid/support/v4/t6;
        value = .enum Landroid/support/v4/s6;->UNBOUNDED_IN:Landroid/support/v4/s6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Landroid/support/v4/np;->o(Lorg/reactivestreams/Publisher;IZ)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static static(Lio/reactivex/CompletableOnSubscribe;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/else;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/else;-><init>(Lio/reactivex/CompletableOnSubscribe;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static super()Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/pp;->do:Landroid/support/v4/np;

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object v0

    return-object v0
.end method

.method public static switch(Ljava/util/concurrent/Callable;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "completableSupplier"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/op;

    invoke-direct {v0, p0}, Landroid/support/v4/op;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static synchronized(Ljava/util/concurrent/Callable;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/rp;

    invoke-direct {v0, p0}, Landroid/support/v4/rp;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lorg/reactivestreams/Publisher;I)Landroid/support/v4/np;
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
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;I)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Landroid/support/v4/np;->o(Lorg/reactivestreams/Publisher;IZ)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method

.method public static v()Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/yp;->do:Landroid/support/v4/np;

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object v0

    return-object v0
.end method

.method public static while(Ljava/lang/Iterable;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/case;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/case;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/this;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/this;-><init>(Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object v0

    return-object v0
.end method

.method public final B()Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/np;->Z()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/for;->b4()Lio/reactivex/for;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/np;->f(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;

    move-result-object v0

    return-object v0
.end method

.method public final C(J)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/np;->Z()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/for;->c4(J)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/np;->f(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final D(Lio/reactivex/functions/BooleanSupplier;)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/np;->Z()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->d4(Lio/reactivex/functions/BooleanSupplier;)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/np;->f(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final E(Lio/reactivex/functions/Function;)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/for<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/reactivestreams/Publisher<",
            "*>;>;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/np;->Z()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->e4(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/np;->f(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final F()Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/np;->Z()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/for;->v4()Lio/reactivex/for;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/np;->f(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;

    move-result-object v0

    return-object v0
.end method

.method public final G(J)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/np;->Z()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/for;->w4(J)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/np;->f(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final H(JLio/reactivex/functions/Predicate;)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/np;->Z()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/for;->x4(JLio/reactivex/functions/Predicate;)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/np;->f(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final I(Lio/reactivex/functions/BiPredicate;)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiPredicate<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/np;->Z()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->y4(Lio/reactivex/functions/BiPredicate;)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/np;->f(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final J(Lio/reactivex/functions/Predicate;)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/np;->Z()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->z4(Lio/reactivex/functions/Predicate;)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/np;->f(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final K(Lio/reactivex/functions/Function;)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/for<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lorg/reactivestreams/Publisher<",
            "*>;>;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/np;->Z()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->B4(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/np;->f(Lorg/reactivestreams/Publisher;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final L(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/CompletableSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 2
    invoke-static {v0}, Landroid/support/v4/np;->public([Lio/reactivex/CompletableSource;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final M(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/np;->Z()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->k5(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final N(Lio/reactivex/new;)Lio/reactivex/new;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/new<",
            "TT;>;)",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/np;->c0()Lio/reactivex/new;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->concatWith(Lio/reactivex/ObservableSource;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public abstract O(Lio/reactivex/CompletableObserver;)V
.end method

.method public final P(Lio/reactivex/try;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/extends;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/extends;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final Q(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/finally;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/finally;-><init>(Landroid/support/v4/np;Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final R(JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/np;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/np;->V(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/CompletableSource;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final S(JLjava/util/concurrent/TimeUnit;Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 7
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/np;->V(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/CompletableSource;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final T(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/np;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/np;->V(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/CompletableSource;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final U(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/np;->V(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/CompletableSource;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final Y(Lio/reactivex/functions/Function;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
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
            "Landroid/support/v4/np;",
            "TU;>;)TU;"
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

.method public final Z()Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/internal/fuseable/FuseToFlowable;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/fuseable/FuseToFlowable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/FuseToFlowable;->fuseToFlowable()Lio/reactivex/for;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/zp;

    invoke-direct {v0, p0}, Landroid/support/v4/zp;-><init>(Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object v0

    return-object v0
.end method

.method public final a0()Landroid/support/v4/fy0;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/internal/fuseable/FuseToMaybe;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/fuseable/FuseToMaybe;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/FuseToMaybe;->fuseToMaybe()Landroid/support/v4/fy0;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/maybe/strictfp;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/strictfp;-><init>(Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object v0

    return-object v0
.end method

.method public final abstract(Lio/reactivex/functions/Action;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/catch;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/catch;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final break()V
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ma;

    invoke-direct {v0}, Landroid/support/v4/ma;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/ma;->if()Ljava/lang/Object;

    return-void
.end method

.method public final c0()Lio/reactivex/new;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/internal/fuseable/FuseToObservable;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lio/reactivex/internal/fuseable/FuseToObservable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/FuseToObservable;->fuseToObservable()Lio/reactivex/new;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/completable/abstract;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/abstract;-><init>(Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->i(Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object v0

    return-object v0
.end method

.method public final case(Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/SingleSource<",
            "TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/case;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/single/case;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final catch(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/ma;

    invoke-direct {v0}, Landroid/support/v4/ma;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/ma;->do(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final class()Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroid/support/v4/a51;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ma;

    invoke-direct {v0}, Landroid/support/v4/ma;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/ma;->new()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final const(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroid/support/v4/a51;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/ma;

    invoke-direct {v0}, Landroid/support/v4/ma;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/ma;->try(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public final continue(Lio/reactivex/functions/Action;)Landroid/support/v4/np;
    .locals 7
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v2

    sget-object v6, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/np;->protected(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final d0(Ljava/util/concurrent/Callable;)Landroid/support/v4/jz1;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completionValueSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/continue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/completable/continue;-><init>(Lio/reactivex/CompletableSource;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final default(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/np;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/np;->extends(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final e0(Ljava/lang/Object;)Landroid/support/v4/jz1;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completionValue is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/continue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/internal/operators/completable/continue;-><init>(Lio/reactivex/CompletableSource;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final else(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/if;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/mixed/if;-><init>(Lio/reactivex/CompletableSource;Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final extends(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)Landroid/support/v4/np;
    .locals 8
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/goto;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/completable/goto;-><init>(Lio/reactivex/CompletableSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final final()Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/for;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/for;-><init>(Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object v0

    return-object v0
.end method

.method public final finally(JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation build Landroid/support/v4/f90;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/np;->package(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final for(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/CompletableSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Landroid/support/v4/np;->if([Lio/reactivex/CompletableSource;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final g0(Lio/reactivex/try;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/break;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/break;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final goto(Lio/reactivex/ObservableSource;)Lio/reactivex/new;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;)",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/do;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/mixed/do;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/ObservableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->i(Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public final i()Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/throw;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/throw;-><init>(Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object v0

    return-object v0
.end method

.method public final implements(Lio/reactivex/functions/Action;)Landroid/support/v4/np;
    .locals 7
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v2

    sget-object v6, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    move-object v0, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/np;->protected(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final interface(Lio/reactivex/functions/Consumer;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "onEvent is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/class;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/class;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/functions/Consumer;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lio/reactivex/CompletableOperator;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "onLift is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/wp;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/wp;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/CompletableOperator;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final k()Landroid/support/v4/jz1;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation build Landroid/support/v4/f90;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/support/v4/jz1<",
            "Landroid/support/v4/t41<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/xp;

    invoke-direct {v0, p0}, Landroid/support/v4/xp;-><init>(Landroid/support/v4/np;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object v0

    return-object v0
.end method

.method public final new(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/if;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/if;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final package(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/np;
    .locals 0
    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation build Landroid/support/v4/f90;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/np;->X(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/np;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v4/np;->new(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final private(Lio/reactivex/functions/Action;)Landroid/support/v4/np;
    .locals 7
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v1

    .line 2
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v2

    sget-object v6, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    move-object v0, p0

    move-object v3, v6

    move-object v4, v6

    move-object v5, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/np;->protected(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final return(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/if;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/if;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final strictfp(Lio/reactivex/functions/Action;)Landroid/support/v4/np;
    .locals 7
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v2

    sget-object v5, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    move-object v0, p0

    move-object v3, v5

    move-object v4, v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/np;->protected(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/u60;

    invoke-direct {v0}, Landroid/support/v4/u60;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "onComplete is null"

    .line 15
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    new-instance v0, Lio/reactivex/internal/observers/do;

    invoke-direct {v0, p1}, Lio/reactivex/internal/observers/do;-><init>(Lio/reactivex/functions/Action;)V

    .line 17
    invoke-virtual {p0, v0}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "onError is null"

    .line 11
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 12
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    new-instance v0, Lio/reactivex/internal/observers/do;

    invoke-direct {v0, p2, p1}, Lio/reactivex/internal/observers/do;-><init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/CompletableObserver;)V
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 3
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Landroid/support/v4/jp1;->q(Landroid/support/v4/np;Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 5
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Landroid/support/v4/np;->O(Lio/reactivex/CompletableObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p1}, Landroid/support/v4/np;->b0(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    .line 10
    throw p1
.end method

.method public final subscribeWith(Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;
    .locals 0
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/CompletableObserver;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-object p1
.end method

.method public final test()Lio/reactivex/observers/if;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/if<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/if;

    invoke-direct {v0}, Lio/reactivex/observers/if;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-object v0
.end method

.method public final test(Z)Lio/reactivex/observers/if;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/observers/if<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lio/reactivex/observers/if;

    invoke-direct {v0}, Lio/reactivex/observers/if;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/reactivex/observers/if;->cancel()V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-object v0
.end method

.method public final this(Lio/reactivex/CompletableConverter;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/CompletableConverter;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/CompletableConverter<",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/CompletableConverter;

    invoke-interface {p1, p0}, Lio/reactivex/CompletableConverter;->apply(Landroid/support/v4/np;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final throw(Lio/reactivex/CompletableTransformer;)Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "transformer is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/CompletableTransformer;

    invoke-interface {p1, p0}, Lio/reactivex/CompletableTransformer;->apply(Landroid/support/v4/np;)Lio/reactivex/CompletableSource;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/np;->j0(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final throws(JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/np;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/np;->extends(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final transient(Lio/reactivex/functions/Consumer;)Landroid/support/v4/np;
    .locals 7
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v2

    sget-object v6, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/np;->protected(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final try(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/const;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/maybe/const;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final u(Lio/reactivex/CompletableSource;)Landroid/support/v4/np;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/CompletableSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Landroid/support/v4/np;->p([Lio/reactivex/CompletableSource;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final volatile(Lio/reactivex/functions/Consumer;)Landroid/support/v4/np;
    .locals 7
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v1

    sget-object v6, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/np;->protected(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lio/reactivex/try;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/static;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/static;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final x()Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->for()Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/np;->y(Lio/reactivex/functions/Predicate;)Landroid/support/v4/np;

    move-result-object v0

    return-object v0
.end method

.method public final y(Lio/reactivex/functions/Predicate;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/switch;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/switch;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/functions/Predicate;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final z(Lio/reactivex/functions/Function;)Landroid/support/v4/np;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "errorMapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/default;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/default;-><init>(Lio/reactivex/CompletableSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method
