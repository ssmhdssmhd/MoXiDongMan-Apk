.class public Lrx/Single;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Single$Transformer;,
        Lrx/Single$OnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final do:Lrx/Single$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single$OnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable$OnSubscribe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lrx/internal/operators/q2;

    invoke-direct {v0, p1}, Lrx/internal/operators/q2;-><init>(Lrx/Observable$OnSubscribe;)V

    invoke-static {v0}, Lrx/plugins/if;->interface(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object p1

    iput-object p1, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    return-void
.end method

.method public constructor <init>(Lrx/Single$OnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single$OnSubscribe<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lrx/plugins/if;->interface(Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object p1

    iput-object p1, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    return-void
.end method

.method private N(Landroid/support/v4/y22;Z)Lrx/Subscription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;Z)",
            "Lrx/Subscription;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/y22;->onStart()V

    .line 2
    :cond_0
    iget-object p2, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    invoke-static {p0, p2}, Lrx/plugins/if;->g(Lrx/Single;Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object p2

    invoke-static {p1}, Lrx/internal/operators/r2;->if(Landroid/support/v4/y22;)Landroid/support/v4/b02;

    move-result-object v0

    invoke-interface {p2, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lrx/plugins/if;->f(Lrx/Subscription;)Lrx/Subscription;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 4
    invoke-static {p2}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 5
    :try_start_1
    invoke-static {p2}, Lrx/plugins/if;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 7
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred attempting to subscribe ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] and then again while trying to pass to onError."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-static {v0}, Lrx/plugins/if;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw v0
.end method

.method public static P(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "TResource;>;",
            "Lrx/functions/Func1<",
            "-TResource;+",
            "Lrx/Single<",
            "+TT;>;>;",
            "Lrx/functions/Action1<",
            "-TResource;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lrx/Single;->Q(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static Q(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0<",
            "TResource;>;",
            "Lrx/functions/Func1<",
            "-TResource;+",
            "Lrx/Single<",
            "+TT;>;>;",
            "Lrx/functions/Action1<",
            "-TResource;>;Z)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceFactory is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "singleFactory is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposeAction is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lrx/internal/operators/w2;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/w2;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static R(Ljava/lang/Iterable;Lrx/functions/FuncN;)Lrx/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Single<",
            "*>;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->volatile(Ljava/lang/Iterable;)[Lrx/Single;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lrx/internal/operators/y2;->do([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static S(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func9;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/Single<",
            "+TT4;>;",
            "Lrx/Single<",
            "+TT5;>;",
            "Lrx/Single<",
            "+TT6;>;",
            "Lrx/Single<",
            "+TT7;>;",
            "Lrx/Single<",
            "+TT8;>;",
            "Lrx/Single<",
            "+TT9;>;",
            "Lrx/functions/Func9<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    .line 1
    new-instance p0, Lrx/Single$do;

    invoke-direct {p0, p9}, Lrx/Single$do;-><init>(Lrx/functions/Func9;)V

    invoke-static {v0, p0}, Lrx/internal/operators/y2;->do([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static T(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func8;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/Single<",
            "+TT4;>;",
            "Lrx/Single<",
            "+TT5;>;",
            "Lrx/Single<",
            "+TT6;>;",
            "Lrx/Single<",
            "+TT7;>;",
            "Lrx/Single<",
            "+TT8;>;",
            "Lrx/functions/Func8<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    .line 1
    new-instance p0, Lrx/Single$native;

    invoke-direct {p0, p8}, Lrx/Single$native;-><init>(Lrx/functions/Func8;)V

    invoke-static {v0, p0}, Lrx/internal/operators/y2;->do([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static U(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func7;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/Single<",
            "+TT4;>;",
            "Lrx/Single<",
            "+TT5;>;",
            "Lrx/Single<",
            "+TT6;>;",
            "Lrx/Single<",
            "+TT7;>;",
            "Lrx/functions/Func7<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    .line 1
    new-instance p0, Lrx/Single$import;

    invoke-direct {p0, p7}, Lrx/Single$import;-><init>(Lrx/functions/Func7;)V

    invoke-static {v0, p0}, Lrx/internal/operators/y2;->do([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static V(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func6;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/Single<",
            "+TT4;>;",
            "Lrx/Single<",
            "+TT5;>;",
            "Lrx/Single<",
            "+TT6;>;",
            "Lrx/functions/Func6<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    .line 1
    new-instance p0, Lrx/Single$while;

    invoke-direct {p0, p6}, Lrx/Single$while;-><init>(Lrx/functions/Func6;)V

    invoke-static {v0, p0}, Lrx/internal/operators/y2;->do([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static W(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func5;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/Single<",
            "+TT4;>;",
            "Lrx/Single<",
            "+TT5;>;",
            "Lrx/functions/Func5<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    .line 1
    new-instance p0, Lrx/Single$throw;

    invoke-direct {p0, p5}, Lrx/Single$throw;-><init>(Lrx/functions/Func5;)V

    invoke-static {v0, p0}, Lrx/internal/operators/y2;->do([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static X(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func4;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/Single<",
            "+TT4;>;",
            "Lrx/functions/Func4<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 1
    new-instance p0, Lrx/Single$super;

    invoke-direct {p0, p4}, Lrx/Single$super;-><init>(Lrx/functions/Func4;)V

    invoke-static {v0, p0}, Lrx/internal/operators/y2;->do([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func3;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/Single<",
            "+TT3;>;",
            "Lrx/functions/Func3<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 1
    new-instance p0, Lrx/Single$final;

    invoke-direct {p0, p3}, Lrx/Single$final;-><init>(Lrx/functions/Func3;)V

    invoke-static {v0, p0}, Lrx/internal/operators/y2;->do([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Lrx/Single;Lrx/Single;Lrx/functions/Func2;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT1;>;",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/functions/Func2<",
            "-TT1;-TT2;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Single;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 1
    new-instance p0, Lrx/Single$const;

    invoke-direct {p0, p2}, Lrx/Single$const;-><init>(Lrx/functions/Func2;)V

    invoke-static {v0, p0}, Lrx/internal/operators/y2;->do([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lrx/Observable;->S1(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static abstract(Ljava/util/concurrent/Future;Lrx/if;)Lrx/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;",
            "Lrx/if;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->package(Ljava/util/concurrent/Future;)Lrx/Single;

    move-result-object p0

    invoke-virtual {p0, p1}, Lrx/Single;->z(Lrx/if;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lrx/Observable;->T1(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static break(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static {p6}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p6

    invoke-static {p7}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p7

    invoke-static/range {p0 .. p7}, Lrx/Observable;->k(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lrx/Observable;->U1(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static case(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lrx/Observable;->g(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static {p6}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p6

    invoke-static {p7}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p7

    invoke-static {p8}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p8

    invoke-static/range {p0 .. p8}, Lrx/Observable;->l(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static const(Lrx/Single$OnSubscribe;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$OnSubscribe<",
            "TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/Single;

    invoke-direct {v0, p0}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public static continue(Ljava/util/concurrent/Callable;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/pz1;

    invoke-direct {v0, p0}, Landroid/support/v4/pz1;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static/range {p0 .. p5}, Lrx/Observable;->V1(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static do(Lrx/Single;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/d3;

    iget-object p0, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    invoke-direct {v0, p0}, Lrx/internal/operators/d3;-><init>(Lrx/Single$OnSubscribe;)V

    invoke-static {v0}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static {p6}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p6

    invoke-static/range {p0 .. p6}, Lrx/Observable;->W1(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static else(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lrx/Observable;->h(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static {p6}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p6

    invoke-static {p7}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p7

    invoke-static/range {p0 .. p7}, Lrx/Observable;->X1(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final(Ljava/util/concurrent/Callable;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "Lrx/Single<",
            "TT;>;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/Single$this;

    invoke-direct {v0, p0}, Lrx/Single$this;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static {p6}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p6

    invoke-static {p7}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p7

    invoke-static {p8}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p8

    invoke-static/range {p0 .. p8}, Lrx/Observable;->Y1(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static goto(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static/range {p0 .. p5}, Lrx/Observable;->i(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lrx/Single;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+",
            "Lrx/Single<",
            "+TT;>;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lrx/internal/util/goto;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lrx/internal/util/goto;

    invoke-static {}, Lrx/internal/util/this;->for()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/goto;->d0(Lrx/functions/Func1;)Lrx/Single;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lrx/Single$class;

    invoke-direct {v0, p0}, Lrx/Single$class;-><init>(Lrx/Single;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+",
            "Lrx/Single<",
            "+TT;>;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-static {p0, v0}, Lrx/Single;->instanceof(Lrx/Observable;I)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static implements(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+",
            "Lrx/Single<",
            "+TT;>;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-static {p0, v0}, Lrx/Single;->instanceof(Lrx/Observable;I)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static instanceof(Lrx/Observable;I)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+",
            "Lrx/Single<",
            "+TT;>;>;I)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrx/internal/util/this;->for()Lrx/functions/Func1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lrx/Observable;->Z0(Lrx/functions/Func1;ZI)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static interface(Ljava/lang/Object;)Lrx/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/internal/util/goto;->b0(Ljava/lang/Object;)Lrx/internal/util/goto;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lrx/Observable;I)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+",
            "Lrx/Single<",
            "+TT;>;>;I)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrx/internal/util/this;->for()Lrx/functions/Func1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lrx/Observable;->Z0(Lrx/functions/Func1;ZI)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static new(Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p0, p1}, Lrx/Observable;->e(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static package(Ljava/util/concurrent/Future;)Lrx/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/rz1;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v4/rz1;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static private(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/rz1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/rz1;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static strictfp(Lrx/functions/Action1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "Lrx/SingleEmitter<",
            "TT;>;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "producer is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/internal/operators/p2;

    invoke-direct {v0, p0}, Lrx/internal/operators/p2;-><init>(Lrx/functions/Action1;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static synchronized(Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p0, p1}, Lrx/Observable;->R1(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static this(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p3}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p3

    invoke-static {p4}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p4

    invoke-static {p5}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p5

    invoke-static {p6}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p6

    invoke-static/range {p0 .. p6}, Lrx/Observable;->j(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static throws(Ljava/lang/Throwable;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/Single$catch;

    invoke-direct {v0, p0}, Lrx/Single$catch;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p0

    return-object p0
.end method

.method public static try(Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p0

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p2}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lrx/Observable;->f(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static volatile(Ljava/lang/Iterable;)[Lrx/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Single<",
            "+TT;>;>;)[",
            "Lrx/Single<",
            "+TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/util/Collection;

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 4
    new-array v0, v0, [Lrx/Single;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lrx/Single;

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/Single;

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Single;

    .line 6
    array-length v4, v0

    if-ne v2, v4, :cond_1

    shr-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v2

    .line 7
    new-array v4, v4, [Lrx/Single;

    .line 8
    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    .line 9
    :cond_1
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    array-length p0, v0

    if-ne p0, v2, :cond_3

    move-object p0, v0

    goto :goto_1

    .line 11
    :cond_3
    new-array p0, v2, [Lrx/Single;

    .line 12
    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final A(Lrx/Completable;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Completable;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/z2;

    iget-object v1, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/z2;-><init>(Lrx/Single$OnSubscribe;Lrx/Completable;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final B(Lrx/Observable;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TE;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/a3;

    iget-object v1, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/a3;-><init>(Lrx/Single$OnSubscribe;Lrx/Observable;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final C(Lrx/Single;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TE;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/b3;

    iget-object v1, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/b3;-><init>(Lrx/Single$OnSubscribe;Lrx/Single;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final D()Lrx/observers/AssertableSubscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observers/AssertableSubscriber<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-static {v0, v1}, Landroid/support/v4/v3;->do(J)Landroid/support/v4/v3;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lrx/Single;->v(Landroid/support/v4/y22;)Lrx/Subscription;

    return-object v0
.end method

.method public final E(JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->do()Lrx/if;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lrx/Single;->H(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/if;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final F(JLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/if;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lrx/Single;->H(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/if;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final G(JLjava/util/concurrent/TimeUnit;Lrx/Single;)Lrx/Single;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->do()Lrx/if;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/Single;->H(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/if;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final H(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/if;)Lrx/Single;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/if;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Lrx/Single$try;

    invoke-direct {p4, p0}, Lrx/Single$try;-><init>(Lrx/Single;)V

    invoke-static {p4}, Lrx/Single;->final(Ljava/util/concurrent/Callable;)Lrx/Single;

    move-result-object p4

    .line 2
    :cond_0
    new-instance v7, Lrx/internal/operators/c3;

    iget-object v1, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    iget-object v6, p4, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    move-object v0, v7

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/c3;-><init>(Lrx/Single$OnSubscribe;JLjava/util/concurrent/TimeUnit;Lrx/if;Lrx/Single$OnSubscribe;)V

    invoke-static {v7}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final I(Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Single<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final J()Lrx/singles/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/singles/do<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/singles/do;->do(Lrx/Single;)Lrx/singles/do;

    move-result-object v0

    return-object v0
.end method

.method public final K()Lrx/Completable;
    .locals 1

    .line 1
    invoke-static {p0}, Lrx/Completable;->implements(Lrx/Single;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final L()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final M(Landroid/support/v4/y22;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lrx/Single;->N(Landroid/support/v4/y22;Z)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public final O(Lrx/if;)Lrx/Single;
    .locals 1
    .annotation build Landroid/support/v4/e90;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/if;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/Single$break;

    invoke-direct {v0, p0, p1}, Lrx/Single$break;-><init>(Lrx/Single;Lrx/if;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final a0(Lrx/Single;Lrx/functions/Func2;)Lrx/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT2;>;",
            "Lrx/functions/Func2<",
            "-TT;-TT2;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lrx/Single;->Z(Lrx/Single;Lrx/Single;Lrx/functions/Func2;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final class(Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lrx/Single;->new(Lrx/Single;Lrx/Single;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final default(Lrx/functions/Func1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Single<",
            "+TR;>;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lrx/internal/util/goto;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lrx/internal/util/goto;

    invoke-virtual {v0, p1}, Lrx/internal/util/goto;->d0(Lrx/functions/Func1;)Lrx/Single;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lrx/Single;->transient(Lrx/functions/Func1;)Lrx/Single;

    move-result-object p1

    invoke-static {p1}, Lrx/Single;->h(Lrx/Single;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final extends(Lrx/functions/Func1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/else;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/else;-><init>(Lrx/Single;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Completable;->throw(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object p1

    return-object p1
.end method

.method public final finally(Lrx/functions/Func1;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "+TR;>;>;)",
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lrx/Single;->transient(Lrx/functions/Func1;)Lrx/Single;

    move-result-object p1

    invoke-static {p1}, Lrx/Single;->do(Lrx/Single;)Lrx/Observable;

    move-result-object p1

    invoke-static {p1}, Lrx/Observable;->P1(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public for(Lrx/Single$Transformer;)Lrx/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$Transformer<",
            "-TT;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Single;

    return-object p1
.end method

.method public final if()Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/Single;->L()Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/Observable;->finally(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->l5()Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final import(Lrx/functions/Action0;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/n2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/n2;-><init>(Lrx/Single;Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lrx/Single;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lrx/Single;->synchronized(Lrx/Single;Lrx/Single;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lrx/if;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/if;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lrx/internal/util/goto;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lrx/internal/util/goto;

    invoke-virtual {v0, p1}, Lrx/internal/util/goto;->e0(Lrx/if;)Lrx/Single;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lrx/internal/operators/s2;

    iget-object v1, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/s2;-><init>(Lrx/Single$OnSubscribe;Lrx/if;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lrx/Single;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/Single;

    invoke-static {p0, p1}, Lrx/internal/operators/x2;->for(Lrx/Single;Lrx/Single;)Lrx/internal/operators/x2;

    move-result-object p1

    invoke-direct {v0, p1}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public final n(Lrx/functions/Func1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single<",
            "+TT;>;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/Single;

    invoke-static {p0, p1}, Lrx/internal/operators/x2;->if(Lrx/Single;Lrx/functions/Func1;)Lrx/internal/operators/x2;

    move-result-object p1

    invoke-direct {v0, p1}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public final native(Lrx/functions/Action1;)Lrx/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Lrx/do<",
            "+TT;>;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lrx/internal/operators/o2;

    new-instance v1, Lrx/Single$else;

    invoke-direct {v1, p0, p1}, Lrx/Single$else;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    new-instance v2, Lrx/Single$goto;

    invoke-direct {v2, p0, p1}, Lrx/Single$goto;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    invoke-direct {v0, p0, v1, v2}, Lrx/internal/operators/o2;-><init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "onNotification is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Lrx/functions/Func1;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/t2;

    iget-object v1, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/t2;-><init>(Lrx/Single$OnSubscribe;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final p()Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/Single;->L()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->k3()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->l5()Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final protected(Lrx/Observable$Operator;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator<",
            "+TR;-TT;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/r2;

    iget-object v1, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/r2;-><init>(Lrx/Single$OnSubscribe;Lrx/Observable$Operator;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final public(Lrx/functions/Action1;)Lrx/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lrx/internal/operators/o2;

    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v1

    new-instance v2, Lrx/Single$case;

    invoke-direct {v2, p0, p1}, Lrx/Single$case;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    invoke-direct {v0, p0, v1, v2}, Lrx/internal/operators/o2;-><init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "onError is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(J)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/Single;->L()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/Observable;->l3(J)Lrx/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Observable;->l5()Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lrx/functions/Func2;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/Single;->L()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->m3(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Observable;->l5()Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final return(Lrx/functions/Action0;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/mz1;

    iget-object v1, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/mz1;-><init>(Lrx/Single$OnSubscribe;Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lrx/functions/Func1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "Lrx/Observable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable<",
            "*>;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/Single;->L()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->n3(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lrx/Observable;->l5()Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final static(Lrx/functions/Action1;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-TT;>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v0

    .line 2
    new-instance v1, Lrx/internal/operators/o2;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/o2;-><init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-static {v1}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "onSuccess is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final super(JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->do()Lrx/if;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Single;->throw(JLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final switch(Lrx/functions/Action0;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/nz1;

    iget-object v1, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/nz1;-><init>(Lrx/Single$OnSubscribe;Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final t()Lrx/Subscription;
    .locals 2

    .line 1
    invoke-static {}, Lrx/functions/do;->do()Lrx/functions/do$const;

    move-result-object v0

    invoke-static {}, Lrx/functions/do;->if()Lrx/functions/Action1;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lrx/Single;->y(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final throw(JLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/Single;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/if;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lrx/internal/operators/m2;

    iget-object v1, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    move-object v0, v6

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/m2;-><init>(Lrx/Single$OnSubscribe;JLjava/util/concurrent/TimeUnit;Lrx/if;)V

    invoke-static {v6}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final transient(Lrx/functions/Func1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-TT;+TR;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/v2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/v2;-><init>(Lrx/Single;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final u(Landroid/support/v4/b02;)Lrx/Subscription;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/Single;->do:Lrx/Single$OnSubscribe;

    invoke-static {p0, v0}, Lrx/plugins/if;->g(Lrx/Single;Lrx/Single$OnSubscribe;)Lrx/Single$OnSubscribe;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lrx/plugins/if;->f(Lrx/Subscription;)Lrx/Subscription;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 4
    :try_start_1
    invoke-static {v0}, Lrx/plugins/if;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    invoke-static {}, Lrx/subscriptions/for;->if()Lrx/Subscription;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 6
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred attempting to subscribe ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] and then again while trying to pass to onError."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v1}, Lrx/plugins/if;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    throw v1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "te is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final v(Landroid/support/v4/y22;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/y22;->onStart()V

    .line 2
    instance-of v0, p1, Landroid/support/v4/sr1;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/support/v4/sr1;

    invoke-direct {v0, p1}, Landroid/support/v4/sr1;-><init>(Landroid/support/v4/y22;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lrx/Single;->N(Landroid/support/v4/y22;Z)Lrx/Subscription;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lrx/Single;->N(Landroid/support/v4/y22;Z)Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "observer can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(Lrx/Observer;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/Single$for;

    invoke-direct {v0, p0, p1}, Lrx/Single$for;-><init>(Lrx/Single;Lrx/Observer;)V

    invoke-virtual {p0, v0}, Lrx/Single;->u(Landroid/support/v4/b02;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public final while(Lrx/Observable;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "*>;)",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/internal/operators/u2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/u2;-><init>(Lrx/Single;Lrx/Observable;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public final x(Lrx/functions/Action1;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrx/functions/do;->if()Lrx/functions/Action1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lrx/Single;->y(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-TT;>;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lrx/Single$if;

    invoke-direct {v0, p0, p2, p1}, Lrx/Single$if;-><init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Single;->u(Landroid/support/v4/b02;)Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onError can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onSuccess can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final z(Lrx/if;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/if;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lrx/internal/util/goto;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lrx/internal/util/goto;

    invoke-virtual {v0, p1}, Lrx/internal/util/goto;->e0(Lrx/if;)Lrx/Single;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lrx/Single$new;

    invoke-direct {v0, p0, p1}, Lrx/Single$new;-><init>(Lrx/Single;Lrx/if;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method
