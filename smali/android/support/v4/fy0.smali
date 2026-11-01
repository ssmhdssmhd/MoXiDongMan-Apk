.class public abstract Landroid/support/v4/fy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeSource<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lio/reactivex/SingleSource;)Landroid/support/v4/fy0;
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
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "singleSource is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/interface;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/interface;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static E(Ljava/lang/Object;)Landroid/support/v4/fy0;
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
            ">(TT;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/my0;

    invoke-direct {v0, p0}, Landroid/support/v4/my0;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static I(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeSource<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/private;

    invoke-static {}, Lio/reactivex/internal/functions/do;->catch()Lio/reactivex/functions/Function;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/maybe/private;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static J(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Landroid/support/v4/fy0;->P([Lio/reactivex/MaybeSource;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static K(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Landroid/support/v4/fy0;->P([Lio/reactivex/MaybeSource;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static K0(JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/fy0;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/support/v4/fy0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/fy0;->L0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static L(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Landroid/support/v4/fy0;->P([Lio/reactivex/MaybeSource;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static L0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/fy0;
    .locals 3
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")",
            "Landroid/support/v4/fy0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/maybe/o;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/o;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static M(Ljava/lang/Iterable;)Lio/reactivex/for;
    .locals 0
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
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->f2(Ljava/lang/Iterable;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/fy0;->N(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static N(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;
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
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/fy0;->O(Lorg/reactivestreams/Publisher;I)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static O(Lorg/reactivestreams/Publisher;I)Lio/reactivex/for;
    .locals 7
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
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;I)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 3
    new-instance v0, Landroid/support/v4/zc0;

    invoke-static {}, Lio/reactivex/internal/operators/maybe/r;->instance()Lio/reactivex/functions/Function;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/zc0;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;ZII)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static varargs P([Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/for;->s1()Lio/reactivex/for;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/maybe/p;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/p;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeMergeArray;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeMergeArray;-><init>([Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static varargs Q([Lio/reactivex/MaybeSource;)Lio/reactivex/for;
    .locals 3
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
            ">([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/for;->s1()Lio/reactivex/for;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/r;->instance()Lio/reactivex/functions/Function;

    move-result-object v1

    const/4 v2, 0x1

    array-length p0, p0

    invoke-virtual {v0, v1, v2, p0}, Lio/reactivex/for;->J1(Lio/reactivex/functions/Function;ZI)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static R(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Landroid/support/v4/fy0;->Q([Lio/reactivex/MaybeSource;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static R0(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
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

    .line 1
    instance-of v0, p0, Landroid/support/v4/fy0;

    if-nez v0, :cond_0

    const-string v0, "onSubscribe is null"

    .line 2
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/maybe/t;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/t;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Maybe) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static S(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Landroid/support/v4/fy0;->Q([Lio/reactivex/MaybeSource;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static T(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Landroid/support/v4/fy0;->Q([Lio/reactivex/MaybeSource;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static T0(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;)Landroid/support/v4/fy0;
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
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lio/reactivex/functions/Function<",
            "-TD;+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TD;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/fy0;->U0(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ljava/lang/Iterable;)Lio/reactivex/for;
    .locals 2
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
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->f2(Ljava/lang/Iterable;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/r;->instance()Lio/reactivex/functions/Function;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/for;->I1(Lio/reactivex/functions/Function;Z)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static U0(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)Landroid/support/v4/fy0;
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
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lio/reactivex/functions/Function<",
            "-TD;+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TD;>;Z)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/maybe/v;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/v;-><init>(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static V(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;
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
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/fy0;->W(Lorg/reactivestreams/Publisher;I)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static V0(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
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

    .line 1
    instance-of v0, p0, Landroid/support/v4/fy0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/support/v4/fy0;

    invoke-static {p0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "onSubscribe is null"

    .line 3
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/maybe/t;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/t;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static W(Lorg/reactivestreams/Publisher;I)Lio/reactivex/for;
    .locals 7
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
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;I)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 3
    new-instance v0, Landroid/support/v4/zc0;

    invoke-static {}, Lio/reactivex/internal/operators/maybe/r;->instance()Lio/reactivex/functions/Function;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/zc0;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;ZII)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static W0(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function9;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT5;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT6;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT7;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT8;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT9;>;",
            "Lio/reactivex/functions/Function9<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 8
    invoke-static {p7, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 9
    invoke-static {p8, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-static {p9}, Lio/reactivex/internal/functions/do;->continue(Lio/reactivex/functions/Function9;)Lio/reactivex/functions/Function;

    move-result-object p9

    const/16 v0, 0x9

    new-array v0, v0, [Lio/reactivex/MaybeSource;

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

    invoke-static {p9, v0}, Landroid/support/v4/fy0;->f1(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static X0(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function8;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT5;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT6;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT7;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT8;>;",
            "Lio/reactivex/functions/Function8<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 8
    invoke-static {p7, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-static {p8}, Lio/reactivex/internal/functions/do;->abstract(Lio/reactivex/functions/Function8;)Lio/reactivex/functions/Function;

    move-result-object p8

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/MaybeSource;

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

    invoke-static {p8, v0}, Landroid/support/v4/fy0;->f1(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static Y()Landroid/support/v4/fy0;
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
    sget-object v0, Landroid/support/v4/oy0;->do:Landroid/support/v4/oy0;

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object v0

    return-object v0
.end method

.method public static Y0(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function7;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT5;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT6;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT7;>;",
            "Lio/reactivex/functions/Function7<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-static {p7}, Lio/reactivex/internal/functions/do;->private(Lio/reactivex/functions/Function7;)Lio/reactivex/functions/Function;

    move-result-object p7

    const/4 v0, 0x7

    new-array v0, v0, [Lio/reactivex/MaybeSource;

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

    invoke-static {p7, v0}, Landroid/support/v4/fy0;->f1(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static Z0(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function6;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT5;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT6;>;",
            "Lio/reactivex/functions/Function6<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {p6}, Lio/reactivex/internal/functions/do;->package(Lio/reactivex/functions/Function6;)Lio/reactivex/functions/Function;

    move-result-object p6

    const/4 v0, 0x6

    new-array v0, v0, [Lio/reactivex/MaybeSource;

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

    invoke-static {p6, v0}, Landroid/support/v4/fy0;->f1(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static a1(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function5;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT4;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT5;>;",
            "Lio/reactivex/functions/Function5<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p5}, Lio/reactivex/internal/functions/do;->finally(Lio/reactivex/functions/Function5;)Lio/reactivex/functions/Function;

    move-result-object p5

    const/4 v0, 0x5

    new-array v0, v0, [Lio/reactivex/MaybeSource;

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

    invoke-static {p5, v0}, Landroid/support/v4/fy0;->f1(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static b1(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function4;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT4;>;",
            "Lio/reactivex/functions/Function4<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p4}, Lio/reactivex/internal/functions/do;->extends(Lio/reactivex/functions/Function4;)Lio/reactivex/functions/Function;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, Landroid/support/v4/fy0;->f1(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static break(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Landroid/support/v4/fy0;->throw([Lio/reactivex/MaybeSource;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static c1(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function3;)Landroid/support/v4/fy0;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT3;>;",
            "Lio/reactivex/functions/Function3<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lio/reactivex/internal/functions/do;->default(Lio/reactivex/functions/Function3;)Lio/reactivex/functions/Function;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, Landroid/support/v4/fy0;->f1(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Landroid/support/v4/fy0;->throw([Lio/reactivex/MaybeSource;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static class(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Landroid/support/v4/fy0;->throw([Lio/reactivex/MaybeSource;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static const(Ljava/lang/Iterable;)Lio/reactivex/for;
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
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/case;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/case;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static d1(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/fy0;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT1;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT2;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT1;-TT2;+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lio/reactivex/internal/functions/do;->throws(Lio/reactivex/functions/BiFunction;)Lio/reactivex/functions/Function;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, Landroid/support/v4/fy0;->f1(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static do(Ljava/lang/Iterable;)Landroid/support/v4/fy0;
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
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/if;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/maybe/if;-><init>([Lio/reactivex/MaybeSource;Ljava/lang/Iterable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static e1(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/maybe/x;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/x;-><init>(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs f1(Lio/reactivex/functions/Function;[Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/support/v4/fy0;->g()Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    .line 4
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/maybe/w;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/maybe/w;-><init>([Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static final(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;
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
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/fy0;->super(Lorg/reactivestreams/Publisher;I)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static finally(Lio/reactivex/MaybeOnSubscribe;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeOnSubscribe<",
            "TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/this;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/this;-><init>(Lio/reactivex/MaybeOnSubscribe;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static g()Landroid/support/v4/fy0;
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
    sget-object v0, Landroid/support/v4/iy0;->do:Landroid/support/v4/iy0;

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/Throwable;)Landroid/support/v4/fy0;
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
            "Ljava/lang/Throwable;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/jy0;

    invoke-direct {v0, p0}, Landroid/support/v4/jy0;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/concurrent/Callable;)Landroid/support/v4/fy0;
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
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/ky0;

    invoke-direct {v0, p0}, Landroid/support/v4/ky0;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs if([Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
    .locals 2
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/support/v4/fy0;->g()Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/support/v4/fy0;->V0(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/maybe/if;-><init>([Lio/reactivex/MaybeSource;Ljava/lang/Iterable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs import([Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            ">([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/r;->instance()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/for;->i0(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static native(Ljava/lang/Iterable;)Lio/reactivex/for;
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
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/for;->f2(Ljava/lang/Iterable;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/r;->instance()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/for;->g0(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static private(Ljava/util/concurrent/Callable;)Landroid/support/v4/fy0;
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
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "maybeSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/hy0;

    invoke-direct {v0, p0}, Landroid/support/v4/hy0;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static public(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;
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
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->g2(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/r;->instance()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/for;->g0(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static return(Ljava/lang/Iterable;)Lio/reactivex/for;
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->f2(Ljava/lang/Iterable;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/r;->instance()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/for;->i0(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static static(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;
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
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->g2(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/maybe/r;->instance()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/for;->i0(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static super(Lorg/reactivestreams/Publisher;I)Lio/reactivex/for;
    .locals 3
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
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;I)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 3
    new-instance v0, Landroid/support/v4/vc0;

    invoke-static {}, Lio/reactivex/internal/operators/maybe/r;->instance()Lio/reactivex/functions/Function;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/try;->IMMEDIATE:Lio/reactivex/internal/util/try;

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/support/v4/vc0;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static varargs throw([Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/for;->s1()Lio/reactivex/for;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/maybe/p;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/p;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/new;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/new;-><init>([Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lio/reactivex/functions/Action;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/functions/Action;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/abstract;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/abstract;-><init>(Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static u0(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Landroid/support/v4/jz1;
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
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/if;->new()Lio/reactivex/functions/BiPredicate;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/support/v4/fy0;->v0(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiPredicate;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/util/concurrent/Callable;)Landroid/support/v4/fy0;
    .locals 1
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
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
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/continue;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/continue;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static v0(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiPredicate;)Landroid/support/v4/jz1;
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
            "+TT;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;)",
            "Landroid/support/v4/jz1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isEqual is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/maybe/native;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/maybe/native;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiPredicate;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lio/reactivex/CompletableSource;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/CompletableSource;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completableSource is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/strictfp;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/strictfp;-><init>(Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs while([Lio/reactivex/MaybeSource;)Lio/reactivex/for;
    .locals 2
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
            ">([",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/for;->s1()Lio/reactivex/for;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/maybe/p;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/p;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/try;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/try;-><init>([Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/util/concurrent/Future;)Landroid/support/v4/fy0;
    .locals 4
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
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/ly0;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v4/ly0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/fy0;
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
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/support/v4/ly0;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/ly0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Runnable;)Landroid/support/v4/fy0;
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
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/volatile;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/volatile;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TU;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/k;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/k;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final B()Landroid/support/v4/fy0;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/protected;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/protected;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object v0

    return-object v0
.end method

.method public final B0(Lorg/reactivestreams/Publisher;)Landroid/support/v4/fy0;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/l;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/l;-><init>(Lio/reactivex/MaybeSource;Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final C()Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/implements;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/implements;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object v0

    return-object v0
.end method

.method public final C0(JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/fy0;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/fy0;->E0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final D()Landroid/support/v4/jz1;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/jz1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/synchronized;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/synchronized;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object v0

    return-object v0
.end method

.method public final D0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
    .locals 7
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallback is null"

    .line 1
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/fy0;->F0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final E0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/fy0;
    .locals 0
    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/fy0;->L0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/fy0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/fy0;->G0(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final F(Lio/reactivex/MaybeOperator;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeOperator<",
            "+TR;-TT;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lift is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeOperator;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final F0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallback is null"

    .line 1
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/fy0;->L0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/fy0;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Landroid/support/v4/fy0;->H0(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final G(Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/b;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final G0(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TU;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/maybe/m;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final H()Landroid/support/v4/jz1;
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
            "()",
            "Landroid/support/v4/jz1<",
            "Landroid/support/v4/t41<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ny0;

    invoke-direct {v0, p0}, Landroid/support/v4/ny0;-><init>(Landroid/support/v4/fy0;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object v0

    return-object v0
.end method

.method public final H0(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "TU;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/maybe/m;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/maybe/m;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final I0(Lorg/reactivestreams/Publisher;)Landroid/support/v4/fy0;
    .locals 2
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/maybe/n;-><init>(Lio/reactivex/MaybeSource;Lorg/reactivestreams/Publisher;Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final J0(Lorg/reactivestreams/Publisher;Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/maybe/n;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/maybe/n;-><init>(Lio/reactivex/MaybeSource;Lorg/reactivestreams/Publisher;Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final M0(Lio/reactivex/functions/Function;)Ljava/lang/Object;
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
            "Lio/reactivex/functions/Function<",
            "-",
            "Landroid/support/v4/fy0<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    :try_start_0
    const-string v0, "convert is null"

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

.method public final N0()Lio/reactivex/for;
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
    new-instance v0, Lio/reactivex/internal/operators/maybe/p;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/p;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object v0

    return-object v0
.end method

.method public final O0()Lio/reactivex/new;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    new-instance v0, Lio/reactivex/internal/operators/maybe/q;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/q;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->i(Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object v0

    return-object v0
.end method

.method public final P0()Landroid/support/v4/jz1;
    .locals 2
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/maybe/s;-><init>(Lio/reactivex/MaybeSource;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object v0

    return-object v0
.end method

.method public final Q0(Ljava/lang/Object;)Landroid/support/v4/jz1;
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
            "(TT;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultValue is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/s;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/s;-><init>(Lio/reactivex/MaybeSource;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final S0(Lio/reactivex/try;)Landroid/support/v4/fy0;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/try;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/u;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/u;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final X(Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Landroid/support/v4/fy0;->J(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final Z(Lio/reactivex/try;)Landroid/support/v4/fy0;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/try;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/c;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/c;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/reactivex/functions/Action;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/functions/Action;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lio/reactivex/internal/operators/maybe/g;

    .line 2
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v2

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v6, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    const-string v0, "onDispose is null"

    .line 5
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lio/reactivex/functions/Action;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/g;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    .line 6
    invoke-static {v8}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final a0(Ljava/lang/Class;)Landroid/support/v4/fy0;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Landroid/support/v4/fy0<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/do;->class(Ljava/lang/Class;)Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/fy0;->j(Lio/reactivex/functions/Predicate;)Landroid/support/v4/fy0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/fy0;->goto(Ljava/lang/Class;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final abstract(JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/fy0;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/fy0;->continue(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lio/reactivex/functions/Consumer;)Landroid/support/v4/fy0;
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
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lio/reactivex/internal/operators/maybe/g;

    .line 2
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v2

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v3

    const-string v0, "onError is null"

    .line 4
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lio/reactivex/functions/Consumer;

    sget-object v7, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/g;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    .line 5
    invoke-static {v8}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final b0()Landroid/support/v4/fy0;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->for()Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/fy0;->c0(Lio/reactivex/functions/Predicate;)Landroid/support/v4/fy0;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lio/reactivex/functions/BiConsumer;)Landroid/support/v4/fy0;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onEvent is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/while;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/while;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiConsumer;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final c0(Lio/reactivex/functions/Predicate;)Landroid/support/v4/fy0;
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
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/d;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Predicate;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final case(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string v0, "defaultValue is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/ma;

    invoke-direct {v0}, Landroid/support/v4/ma;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v4/fy0;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/support/v4/ma;->for(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final continue(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/fy0;
    .locals 7
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/maybe/break;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/maybe/break;-><init>(Lio/reactivex/MaybeSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lio/reactivex/functions/Consumer;)Landroid/support/v4/fy0;
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
            ">;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lio/reactivex/internal/operators/maybe/g;

    const-string v0, "onSubscribe is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v7, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/g;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    .line 5
    invoke-static {v8}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final d0(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/do;->final(Ljava/lang/Object;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/fy0;->e0(Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final default(Ljava/lang/Object;)Landroid/support/v4/jz1;
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
            "Ljava/lang/Object;",
            ")",
            "Landroid/support/v4/jz1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/else;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/else;-><init>(Lio/reactivex/MaybeSource;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lio/reactivex/functions/Consumer;)Landroid/support/v4/fy0;
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
            "-TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lio/reactivex/internal/operators/maybe/g;

    .line 2
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v2

    const-string v0, "onSuccess is null"

    .line 3
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lio/reactivex/functions/Consumer;

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v7, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/g;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    .line 5
    invoke-static {v8}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final e0(Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/maybe/e;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;Z)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final else()Landroid/support/v4/fy0;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/for;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/for;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object v0

    return-object v0
.end method

.method public final extends()Landroid/support/v4/jz1;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/jz1<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/goto;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/goto;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lio/reactivex/functions/Action;)Landroid/support/v4/fy0;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation build Landroid/support/v4/f90;
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Action;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/import;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/import;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final f0(Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;
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
            "+TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "valueSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/f;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/f;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final for(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Landroid/support/v4/fy0;->if([Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final g0(Ljava/lang/Object;)Landroid/support/v4/fy0;
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
            "(TT;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/do;->final(Ljava/lang/Object;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/fy0;->f0(Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final g1(Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/fy0;
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
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeSource<",
            "+TU;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1, p2}, Landroid/support/v4/fy0;->d1(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final goto(Ljava/lang/Class;)Landroid/support/v4/fy0;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TU;>;)",
            "Landroid/support/v4/fy0<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/do;->try(Ljava/lang/Class;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/fy0;->G(Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final h0(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/e;

    invoke-static {p1}, Lio/reactivex/internal/functions/do;->final(Ljava/lang/Object;)Lio/reactivex/functions/Function;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/maybe/e;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;Z)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final i0()Landroid/support/v4/fy0;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/final;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/final;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object v0

    return-object v0
.end method

.method public final implements(Lio/reactivex/functions/Action;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/functions/Action;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lio/reactivex/internal/operators/maybe/g;

    .line 2
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v2

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v4

    sget-object v7, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    const-string v0, "onAfterTerminate is null"

    .line 5
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lio/reactivex/functions/Action;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/g;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    .line 6
    invoke-static {v8}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final instanceof(Lio/reactivex/functions/Action;)Landroid/support/v4/fy0;
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
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/throw;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/throw;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final interface(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/fy0;
    .locals 0
    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/for;->u6(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/for;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/fy0;->protected(Lorg/reactivestreams/Publisher;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lio/reactivex/functions/Predicate;)Landroid/support/v4/fy0;
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
            "-TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/public;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/public;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Predicate;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final j0()Lio/reactivex/for;
    .locals 2
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

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/fy0;->k0(J)Lio/reactivex/for;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/private;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/private;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final k0(J)Lio/reactivex/for;
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
            "(J)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/fy0;->N0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/for;->c4(J)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/fy0;
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
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TU;>;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/maybe/static;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/maybe/static;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final l0(Lio/reactivex/functions/BooleanSupplier;)Lio/reactivex/for;
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
            "Lio/reactivex/functions/BooleanSupplier;",
            ")",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/fy0;->N0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->d4(Lio/reactivex/functions/BooleanSupplier;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onSuccessMapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/maybe/extends;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/extends;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final m0(Lio/reactivex/functions/Function;)Lio/reactivex/for;
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
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/for<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/reactivestreams/Publisher<",
            "*>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/fy0;->N0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->e4(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lio/reactivex/functions/Function;)Landroid/support/v4/np;
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
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;)",
            "Landroid/support/v4/np;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/switch;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/switch;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final n0()Landroid/support/v4/fy0;
    .locals 3
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->for()Lio/reactivex/functions/Predicate;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/v4/fy0;->p0(JLio/reactivex/functions/Predicate;)Landroid/support/v4/fy0;

    move-result-object v0

    return-object v0
.end method

.method public final new(Lio/reactivex/MaybeConverter;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/MaybeConverter;
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
            "Lio/reactivex/MaybeConverter<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/MaybeConverter;

    invoke-interface {p1, p0}, Lio/reactivex/MaybeConverter;->apply(Landroid/support/v4/fy0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lio/reactivex/functions/Function;)Lio/reactivex/new;
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
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;)",
            "Lio/reactivex/new<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/this;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/mixed/this;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->i(Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public final o0(J)Landroid/support/v4/fy0;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->for()Lio/reactivex/functions/Predicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/fy0;->p0(JLio/reactivex/functions/Predicate;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lio/reactivex/functions/Function;)Lio/reactivex/for;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;)",
            "Lio/reactivex/for<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/break;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/mixed/break;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final p0(JLio/reactivex/functions/Predicate;)Landroid/support/v4/fy0;
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
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/fy0;->N0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/for;->x4(JLio/reactivex/functions/Predicate;)Lio/reactivex/for;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/for;->T4()Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final package(Ljava/lang/Object;)Landroid/support/v4/fy0;
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
            "(TT;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroid/support/v4/fy0;->E(Ljava/lang/Object;)Landroid/support/v4/fy0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/fy0;->y0(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final protected(Lorg/reactivestreams/Publisher;)Landroid/support/v4/fy0;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/class;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/class;-><init>(Lio/reactivex/MaybeSource;Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lio/reactivex/functions/Function;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;)",
            "Landroid/support/v4/jz1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/finally;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/finally;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final q0(Lio/reactivex/functions/BiPredicate;)Landroid/support/v4/fy0;
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
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/fy0;->N0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->y4(Lio/reactivex/functions/BiPredicate;)Lio/reactivex/for;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/for;->T4()Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/package;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/package;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final r0(Lio/reactivex/functions/Predicate;)Landroid/support/v4/fy0;
    .locals 2
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
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v4/fy0;->p0(JLio/reactivex/functions/Predicate;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lio/reactivex/functions/Function;)Lio/reactivex/for;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/for<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/throws;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/throws;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final s0(Lio/reactivex/functions/BooleanSupplier;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/functions/BooleanSupplier;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/do;->static(Lio/reactivex/functions/BooleanSupplier;)Lio/reactivex/functions/Predicate;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v4/fy0;->p0(JLio/reactivex/functions/Predicate;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final strictfp(Lorg/reactivestreams/Publisher;)Landroid/support/v4/fy0;
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
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "delayIndicator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/catch;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/catch;-><init>(Lio/reactivex/MaybeSource;Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lio/reactivex/disposables/Disposable;
    .locals 3
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/do;->case:Lio/reactivex/functions/Consumer;

    sget-object v2, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/fy0;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 2
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 2
    sget-object v0, Lio/reactivex/internal/functions/do;->case:Lio/reactivex/functions/Consumer;

    sget-object v1, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/fy0;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 3
    sget-object v0, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/fy0;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;
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
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    .line 4
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 5
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 6
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v0, Landroid/support/v4/gy0;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/gy0;-><init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/fy0;->subscribeWith(Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/MaybeObserver;)V
    .locals 2
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 8
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-static {p0, p1}, Landroid/support/v4/jp1;->r(Landroid/support/v4/fy0;Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 10
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/v4/fy0;->w0(Lio/reactivex/MaybeObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p1}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 15
    throw v0

    :catch_0
    move-exception p1

    .line 16
    throw p1
.end method

.method public final subscribeWith(Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;
    .locals 0
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/fy0;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-object p1
.end method

.method public final switch(Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/private;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/private;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final synchronized(Lio/reactivex/functions/Action;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/functions/Action;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lio/reactivex/internal/operators/maybe/g;

    .line 2
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v2

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v4

    const-string v0, "onComplete is null"

    .line 5
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lio/reactivex/functions/Action;

    sget-object v7, Lio/reactivex/internal/functions/do;->for:Lio/reactivex/functions/Action;

    move-object v0, v8

    move-object v1, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/operators/maybe/g;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    .line 6
    invoke-static {v8}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lio/reactivex/functions/Function;)Lio/reactivex/new;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/new<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/default;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/default;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->i(Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public final t0(Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;
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
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/fy0;->N0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->B4(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/for;->T4()Landroid/support/v4/fy0;

    move-result-object p1

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
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/if;

    invoke-direct {v0}, Lio/reactivex/observers/if;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/fy0;->subscribe(Lio/reactivex/MaybeObserver;)V

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
            "TT;>;"
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
    invoke-virtual {p0, v0}, Landroid/support/v4/fy0;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-object v0
.end method

.method public final this(Lio/reactivex/MaybeTransformer;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeTransformer<",
            "-TT;+TR;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transformer is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/MaybeTransformer;

    invoke-interface {p1, p0}, Lio/reactivex/MaybeTransformer;->apply(Landroid/support/v4/fy0;)Lio/reactivex/MaybeSource;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/fy0;->V0(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final throws(Lio/reactivex/MaybeSource;)Lio/reactivex/for;
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
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Landroid/support/v4/fy0;->break(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final transient(Lio/reactivex/functions/Consumer;)Landroid/support/v4/fy0;
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
            "-TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterSuccess is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/super;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/super;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Consumer;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final try()Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ma;

    invoke-direct {v0}, Landroid/support/v4/ma;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/fy0;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/ma;->if()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final volatile(JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/fy0;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/fy0;->interface(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public abstract w0(Lio/reactivex/MaybeObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final x0(Lio/reactivex/try;)Landroid/support/v4/fy0;
    .locals 1
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/try;",
            ")",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/h;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/h;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final y0(Lio/reactivex/MaybeSource;)Landroid/support/v4/fy0;
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
            "Lio/reactivex/MaybeSource<",
            "+TT;>;)",
            "Landroid/support/v4/fy0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/i;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/i;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final z0(Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/j;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/j;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method
