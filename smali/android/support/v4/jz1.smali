.class public abstract Landroid/support/v4/jz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleSource<",
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

.method public static B0(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;)Landroid/support/v4/jz1;
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
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TU;+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TU;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/jz1;->C0(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static C0(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)Landroid/support/v4/jz1;
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
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TU;+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TU;>;Z)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "singleFunction is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/single/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static D(Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/static;

    invoke-static {}, Lio/reactivex/internal/functions/do;->catch()Lio/reactivex/functions/Function;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/single/static;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static D0(Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
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

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Landroid/support/v4/jz1;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/support/v4/jz1;

    invoke-static {p0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Landroid/support/v4/sz1;

    invoke-direct {v0, p0}, Landroid/support/v4/sz1;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static E(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->I(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static E0(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/Function9;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT1;>;",
            "Lio/reactivex/SingleSource<",
            "+TT2;>;",
            "Lio/reactivex/SingleSource<",
            "+TT3;>;",
            "Lio/reactivex/SingleSource<",
            "+TT4;>;",
            "Lio/reactivex/SingleSource<",
            "+TT5;>;",
            "Lio/reactivex/SingleSource<",
            "+TT6;>;",
            "Lio/reactivex/SingleSource<",
            "+TT7;>;",
            "Lio/reactivex/SingleSource<",
            "+TT8;>;",
            "Lio/reactivex/SingleSource<",
            "+TT9;>;",
            "Lio/reactivex/functions/Function9<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Landroid/support/v4/jz1<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

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

    invoke-static {p9, v0}, Landroid/support/v4/jz1;->N0(Lio/reactivex/functions/Function;[Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static F(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->I(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static F0(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/Function8;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT1;>;",
            "Lio/reactivex/SingleSource<",
            "+TT2;>;",
            "Lio/reactivex/SingleSource<",
            "+TT3;>;",
            "Lio/reactivex/SingleSource<",
            "+TT4;>;",
            "Lio/reactivex/SingleSource<",
            "+TT5;>;",
            "Lio/reactivex/SingleSource<",
            "+TT6;>;",
            "Lio/reactivex/SingleSource<",
            "+TT7;>;",
            "Lio/reactivex/SingleSource<",
            "+TT8;>;",
            "Lio/reactivex/functions/Function8<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Landroid/support/v4/jz1<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

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

    invoke-static {p8, v0}, Landroid/support/v4/jz1;->N0(Lio/reactivex/functions/Function;[Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static G(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->I(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static G0(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/Function7;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT1;>;",
            "Lio/reactivex/SingleSource<",
            "+TT2;>;",
            "Lio/reactivex/SingleSource<",
            "+TT3;>;",
            "Lio/reactivex/SingleSource<",
            "+TT4;>;",
            "Lio/reactivex/SingleSource<",
            "+TT5;>;",
            "Lio/reactivex/SingleSource<",
            "+TT6;>;",
            "Lio/reactivex/SingleSource<",
            "+TT7;>;",
            "Lio/reactivex/functions/Function7<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Landroid/support/v4/jz1<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

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

    invoke-static {p7, v0}, Landroid/support/v4/jz1;->N0(Lio/reactivex/functions/Function;[Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/Iterable;)Lio/reactivex/for;
    .locals 0
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->f2(Ljava/lang/Iterable;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->I(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static H0(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/Function6;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT1;>;",
            "Lio/reactivex/SingleSource<",
            "+TT2;>;",
            "Lio/reactivex/SingleSource<",
            "+TT3;>;",
            "Lio/reactivex/SingleSource<",
            "+TT4;>;",
            "Lio/reactivex/SingleSource<",
            "+TT5;>;",
            "Lio/reactivex/SingleSource<",
            "+TT6;>;",
            "Lio/reactivex/functions/Function6<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Landroid/support/v4/jz1<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

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

    invoke-static {p6, v0}, Landroid/support/v4/jz1;->N0(Lio/reactivex/functions/Function;[Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static I(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/zc0;

    invoke-static {}, Lio/reactivex/internal/operators/single/abstract;->for()Lio/reactivex/functions/Function;

    move-result-object v3

    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v6

    const/4 v4, 0x0

    const v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/zc0;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;ZII)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static I0(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/Function5;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT1;>;",
            "Lio/reactivex/SingleSource<",
            "+TT2;>;",
            "Lio/reactivex/SingleSource<",
            "+TT3;>;",
            "Lio/reactivex/SingleSource<",
            "+TT4;>;",
            "Lio/reactivex/SingleSource<",
            "+TT5;>;",
            "Lio/reactivex/functions/Function5<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Landroid/support/v4/jz1<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

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

    invoke-static {p5, v0}, Landroid/support/v4/jz1;->N0(Lio/reactivex/functions/Function;[Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static J(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->N(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static J0(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/Function4;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT1;>;",
            "Lio/reactivex/SingleSource<",
            "+TT2;>;",
            "Lio/reactivex/SingleSource<",
            "+TT3;>;",
            "Lio/reactivex/SingleSource<",
            "+TT4;>;",
            "Lio/reactivex/functions/Function4<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Landroid/support/v4/jz1<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, Landroid/support/v4/jz1;->N0(Lio/reactivex/functions/Function;[Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static K(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->N(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static K0(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/Function3;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT1;>;",
            "Lio/reactivex/SingleSource<",
            "+TT2;>;",
            "Lio/reactivex/SingleSource<",
            "+TT3;>;",
            "Lio/reactivex/functions/Function3<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Landroid/support/v4/jz1<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, Landroid/support/v4/jz1;->N0(Lio/reactivex/functions/Function;[Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static L(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->N(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static L0(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT1;>;",
            "Lio/reactivex/SingleSource<",
            "+TT2;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT1;-TT2;+TR;>;)",
            "Landroid/support/v4/jz1<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, Landroid/support/v4/jz1;->N0(Lio/reactivex/functions/Function;[Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static M(Ljava/lang/Iterable;)Lio/reactivex/for;
    .locals 0
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->f2(Ljava/lang/Iterable;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->N(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static M0(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Landroid/support/v4/jz1<",
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
    new-instance v0, Lio/reactivex/internal/operators/single/e;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/e;-><init>(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static N(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/zc0;

    invoke-static {}, Lio/reactivex/internal/operators/single/abstract;->for()Lio/reactivex/functions/Function;

    move-result-object v3

    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v6

    const/4 v4, 0x1

    const v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/zc0;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;ZII)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static varargs N0(Lio/reactivex/functions/Function;[Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    array-length v0, p1

    if-nez v0, :cond_0

    .line 4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-static {p0}, Landroid/support/v4/jz1;->g(Ljava/lang/Throwable;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/single/d;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/single/d;-><init>([Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static P()Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/wz1;->do:Landroid/support/v4/jz1;

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object v0

    return-object v0
.end method

.method public static break(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->const(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->const(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static class(Ljava/lang/Iterable;)Lio/reactivex/for;
    .locals 0
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->f2(Ljava/lang/Iterable;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->const(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static const(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;
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
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/jz1;->final(Lorg/reactivestreams/Publisher;I)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static do(Ljava/lang/Iterable;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/do;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/single/do;-><init>([Lio/reactivex/SingleSource;Ljava/lang/Iterable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
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
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "first is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "second is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/single/return;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/return;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static final(Lorg/reactivestreams/Publisher;I)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
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

    invoke-static {}, Lio/reactivex/internal/operators/single/abstract;->for()Lio/reactivex/functions/Function;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/try;->IMMEDIATE:Lio/reactivex/internal/util/try;

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/support/v4/vc0;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Throwable;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/internal/functions/do;->const(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->h(Ljava/util/concurrent/Callable;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/util/concurrent/Callable;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/oz1;

    invoke-direct {v0, p0}, Landroid/support/v4/oz1;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static varargs if([Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/internal/operators/single/abstract;->do()Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->h(Ljava/util/concurrent/Callable;)Landroid/support/v4/jz1;

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

    invoke-static {p0}, Landroid/support/v4/jz1;->D0(Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/single/do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/single/do;-><init>([Lio/reactivex/SingleSource;Ljava/lang/Iterable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static import(Ljava/lang/Iterable;)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->f2(Ljava/lang/Iterable;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/single/abstract;->for()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/for;->i0(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static native(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;
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
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->g2(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/single/abstract;->for()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/for;->i0(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method private p0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
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
    new-instance v0, Lio/reactivex/internal/operators/single/implements;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/single/implements;-><init>(Lio/reactivex/SingleSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public static q(Ljava/util/concurrent/Callable;)Landroid/support/v4/jz1;
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
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/qz1;

    invoke-direct {v0, p0}, Landroid/support/v4/qz1;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static q0(JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/jz1;->r0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/util/concurrent/Future;)Landroid/support/v4/jz1;
    .locals 0
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->b2(Ljava/util/concurrent/Future;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->y0(Lio/reactivex/for;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static r0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/jz1;
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
            ")",
            "Landroid/support/v4/jz1<",
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
    new-instance v0, Lio/reactivex/internal/operators/single/instanceof;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/single/instanceof;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/jz1;
    .locals 0
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/reactivex/for;->c2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->y0(Lio/reactivex/for;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static super(Lio/reactivex/ObservableSource;)Lio/reactivex/new;
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
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/public;

    invoke-static {}, Lio/reactivex/internal/operators/single/abstract;->new()Lio/reactivex/functions/Function;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/try;->IMMEDIATE:Lio/reactivex/internal/util/try;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v1, v3, v2}, Lio/reactivex/internal/operators/observable/public;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->i(Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method public static switch(Lio/reactivex/SingleOnSubscribe;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleOnSubscribe<",
            "TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/new;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/new;-><init>(Lio/reactivex/SingleOnSubscribe;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/jz1;
    .locals 0
    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
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
            "Lio/reactivex/try;",
            ")",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/reactivex/for;->d2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->y0(Lio/reactivex/for;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static this(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)Lio/reactivex/for;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
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

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->const(Lorg/reactivestreams/Publisher;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static varargs throw([Lio/reactivex/SingleSource;)Lio/reactivex/for;
    .locals 4
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap;

    invoke-static {p0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/single/abstract;->for()Lio/reactivex/functions/Function;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/try;->BOUNDARY:Lio/reactivex/internal/util/try;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v1, v3, v2}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap;-><init>(Lio/reactivex/for;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method public static throws(Ljava/util/concurrent/Callable;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "singleSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/kz1;

    invoke-direct {v0, p0}, Landroid/support/v4/kz1;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/util/concurrent/Future;Lio/reactivex/try;)Landroid/support/v4/jz1;
    .locals 0
    .annotation runtime Landroid/support/v4/cs1;
        value = "custom"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;",
            "Lio/reactivex/try;",
            ")",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/for;->e2(Ljava/util/concurrent/Future;Lio/reactivex/try;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jz1;->y0(Lio/reactivex/for;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lio/reactivex/ObservableSource;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "observableSource is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/i1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/observable/i1;-><init>(Lio/reactivex/ObservableSource;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lorg/reactivestreams/Publisher;)Landroid/support/v4/jz1;
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
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "publisher is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/package;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/package;-><init>(Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static varargs while([Lio/reactivex/SingleSource;)Lio/reactivex/for;
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
            ">([",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/for;->Z1([Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object p0

    invoke-static {}, Lio/reactivex/internal/operators/single/abstract;->for()Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/for;->i0(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p0

    return-object p0
.end method

.method private static y0(Lio/reactivex/for;)Landroid/support/v4/jz1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/for<",
            "TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/q1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/flowable/q1;-><init>(Lio/reactivex/for;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Object;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/tz1;

    invoke-direct {v0, p0}, Landroid/support/v4/tz1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0
.end method

.method public static z0(Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
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

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Landroid/support/v4/jz1;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/support/v4/sz1;

    invoke-direct {v0, p0}, Landroid/support/v4/sz1;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Single) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Lio/reactivex/SingleOperator;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleOperator<",
            "+TR;-TT;>;)",
            "Landroid/support/v4/jz1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lift is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/uz1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/uz1;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/SingleOperator;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final A0(Lio/reactivex/try;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/b;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final B(Lio/reactivex/functions/Function;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/continue;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/continue;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final C()Landroid/support/v4/jz1;
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
    new-instance v0, Landroid/support/v4/vz1;

    invoke-direct {v0, p0}, Landroid/support/v4/vz1;-><init>(Landroid/support/v4/jz1;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object v0

    return-object v0
.end method

.method public final O(Lio/reactivex/SingleSource;)Lio/reactivex/for;
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
            "(",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/jz1;->E(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final O0(Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/jz1;
    .locals 0
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
            "Lio/reactivex/SingleSource<",
            "TU;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-TT;-TU;+TR;>;)",
            "Landroid/support/v4/jz1<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroid/support/v4/jz1;->L0(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final Q(Lio/reactivex/try;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/strictfp;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/strictfp;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final R(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeSingleInCaseOfError is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/do;->final(Ljava/lang/Object;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/jz1;->S(Lio/reactivex/functions/Function;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final S(Lio/reactivex/functions/Function;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunctionInCaseOfError is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/interface;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/interface;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final T(Lio/reactivex/functions/Function;)Landroid/support/v4/jz1;
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
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/volatile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/single/volatile;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final U(Ljava/lang/Object;)Landroid/support/v4/jz1;
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
            "(TT;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "value is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/volatile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/internal/operators/single/volatile;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final V()Landroid/support/v4/jz1;
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
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/single/catch;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/catch;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object v0

    return-object v0
.end method

.method public final W()Lio/reactivex/for;
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
    invoke-virtual {p0}, Landroid/support/v4/jz1;->u0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/for;->b4()Lio/reactivex/for;

    move-result-object v0

    return-object v0
.end method

.method public final X(J)Lio/reactivex/for;
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
    invoke-virtual {p0}, Landroid/support/v4/jz1;->u0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/for;->c4(J)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final Y(Lio/reactivex/functions/BooleanSupplier;)Lio/reactivex/for;
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
    invoke-virtual {p0}, Landroid/support/v4/jz1;->u0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->d4(Lio/reactivex/functions/BooleanSupplier;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final Z(Lio/reactivex/functions/Function;)Lio/reactivex/for;
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
    invoke-virtual {p0}, Landroid/support/v4/jz1;->u0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->e4(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/reactivex/functions/Consumer;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onError is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/throw;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/throw;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Consumer;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final a0()Landroid/support/v4/jz1;
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
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/jz1;->u0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/for;->v4()Lio/reactivex/for;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/jz1;->y0(Lio/reactivex/for;)Landroid/support/v4/jz1;

    move-result-object v0

    return-object v0
.end method

.method public final abstract(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/new;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/jz1;->strictfp(Lio/reactivex/ObservableSource;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lio/reactivex/functions/BiConsumer;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/functions/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onEvent is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/while;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/while;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/BiConsumer;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final b0(J)Landroid/support/v4/jz1;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/jz1;->u0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/for;->w4(J)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/jz1;->y0(Lio/reactivex/for;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lio/reactivex/functions/Consumer;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/disposables/Disposable;",
            ">;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/import;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/import;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Consumer;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final c0(JLio/reactivex/functions/Predicate;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/jz1;->u0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/for;->x4(JLio/reactivex/functions/Predicate;)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/jz1;->y0(Lio/reactivex/for;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final case()Landroid/support/v4/jz1;
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
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/single/if;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/if;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object v0

    return-object v0
.end method

.method public final continue(Lio/reactivex/CompletableSource;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/CompletableSource;",
            ")",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/case;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/case;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/CompletableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lio/reactivex/functions/Consumer;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/native;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/native;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Consumer;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final d0(Lio/reactivex/functions/BiPredicate;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/jz1;->u0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->y4(Lio/reactivex/functions/BiPredicate;)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/jz1;->y0(Lio/reactivex/for;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final default(JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/jz1;
    .locals 6
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/jz1;->finally(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lio/reactivex/functions/Action;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/public;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/public;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final e0(Lio/reactivex/functions/Predicate;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/jz1;->u0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->z4(Lio/reactivex/functions/Predicate;)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/jz1;->y0(Lio/reactivex/for;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final else(Ljava/lang/Class;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/functions/do;->try(Ljava/lang/Class;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/jz1;->B(Lio/reactivex/functions/Function;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final extends(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/jz1;
    .locals 6
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/jz1;->finally(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final f0(Lio/reactivex/functions/Function;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/jz1;->u0()Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->B4(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/jz1;->y0(Lio/reactivex/for;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final finally(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)Landroid/support/v4/jz1;
    .locals 8
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
            "Z)",
            "Landroid/support/v4/jz1<",
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
    new-instance v0, Lio/reactivex/internal/operators/single/try;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/single/try;-><init>(Lio/reactivex/SingleSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final for(Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Landroid/support/v4/jz1;->if([Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public abstract g0(Lio/reactivex/SingleObserver;)V
    .param p1    # Lio/reactivex/SingleObserver;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final goto(Lio/reactivex/SingleTransformer;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleTransformer<",
            "-TT;+TR;>;)",
            "Landroid/support/v4/jz1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transformer is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/SingleTransformer;

    invoke-interface {p1, p0}, Lio/reactivex/SingleTransformer;->apply(Landroid/support/v4/jz1;)Lio/reactivex/SingleSource;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/jz1;->D0(Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final h0(Lio/reactivex/try;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/protected;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/protected;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/try;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lio/reactivex/functions/Predicate;)Landroid/support/v4/fy0;
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
    new-instance v0, Lio/reactivex/internal/operators/maybe/return;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/maybe/return;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Predicate;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final i0(Lio/reactivex/CompletableSource;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/CompletableSource;",
            ")",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/zp;

    invoke-direct {v0, p1}, Landroid/support/v4/zp;-><init>(Lio/reactivex/CompletableSource;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/jz1;->k0(Lorg/reactivestreams/Publisher;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final implements(Lio/reactivex/functions/Action;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterTerminate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/const;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/const;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final instanceof(Lio/reactivex/functions/Action;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/final;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/final;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final interface(Lorg/reactivestreams/Publisher;)Landroid/support/v4/jz1;
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
            "Lorg/reactivestreams/Publisher<",
            "TU;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/goto;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/goto;-><init>(Lio/reactivex/SingleSource;Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lio/reactivex/functions/Function;)Landroid/support/v4/jz1;
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
    new-instance v0, Lio/reactivex/internal/operators/single/static;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/static;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final j0(Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
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
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/SingleSource<",
            "+TE;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/synchronized;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/synchronized;-><init>(Lio/reactivex/SingleSource;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/jz1;->k0(Lorg/reactivestreams/Publisher;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lio/reactivex/functions/Function;)Landroid/support/v4/np;
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
    new-instance v0, Lio/reactivex/internal/operators/single/switch;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/switch;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object p1

    return-object p1
.end method

.method public final k0(Lorg/reactivestreams/Publisher;)Landroid/support/v4/jz1;
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
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TE;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/transient;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/transient;-><init>(Lio/reactivex/SingleSource;Lorg/reactivestreams/Publisher;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;
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
    new-instance v0, Lio/reactivex/internal/operators/single/extends;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/extends;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final l0(JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/jz1;
    .locals 6
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/jz1;->p0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lio/reactivex/functions/Function;)Lio/reactivex/new;
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
    new-instance v0, Lio/reactivex/internal/operators/mixed/import;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/mixed/import;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->i(Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public final m0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/jz1;
    .locals 6
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/jz1;->p0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lio/reactivex/functions/Function;)Lio/reactivex/for;
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
    new-instance v0, Lio/reactivex/internal/operators/single/finally;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/finally;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final n0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/jz1;->p0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final new(Lio/reactivex/SingleConverter;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/SingleConverter;
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
            "Lio/reactivex/SingleConverter<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/SingleConverter;

    invoke-interface {p1, p0}, Lio/reactivex/SingleConverter;->apply(Landroid/support/v4/jz1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lio/reactivex/functions/Function;)Lio/reactivex/for;
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
    new-instance v0, Lio/reactivex/internal/operators/single/throws;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/throws;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final o0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
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

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/jz1;->p0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lio/reactivex/functions/Function;)Lio/reactivex/new;
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
    new-instance v0, Lio/reactivex/internal/operators/single/default;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/default;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->i(Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public final package(JLjava/util/concurrent/TimeUnit;Z)Landroid/support/v4/jz1;
    .locals 6
    .annotation runtime Landroid/support/v4/cs1;
        value = "io.reactivex:computation"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/jz1;->finally(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final private(JLjava/util/concurrent/TimeUnit;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/do;->do()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/jz1;->abstract(JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final protected(Lio/reactivex/functions/Function;)Landroid/support/v4/fy0;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "-TT;",
            "Landroid/support/v4/t41<",
            "TR;>;>;)",
            "Landroid/support/v4/fy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/break;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/break;-><init>(Landroid/support/v4/jz1;Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object p1

    return-object p1
.end method

.method public final public(Lio/reactivex/SingleSource;)Lio/reactivex/for;
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
            "(",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/jz1;->this(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public final return(Ljava/lang/Object;)Landroid/support/v4/jz1;
    .locals 1
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

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/if;->new()Lio/reactivex/functions/BiPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/jz1;->static(Ljava/lang/Object;Lio/reactivex/functions/BiPredicate;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final s0(Lio/reactivex/functions/Function;)Ljava/lang/Object;
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
            "Lio/reactivex/functions/Function<",
            "-",
            "Landroid/support/v4/jz1<",
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

.method public final static(Ljava/lang/Object;Lio/reactivex/functions/BiPredicate;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/functions/BiPredicate<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/jz1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "value is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "comparer is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/single/for;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/single/for;-><init>(Lio/reactivex/SingleSource;Ljava/lang/Object;Lio/reactivex/functions/BiPredicate;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final strictfp(Lio/reactivex/ObservableSource;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/ObservableSource<",
            "TU;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/else;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/else;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/ObservableSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lio/reactivex/disposables/Disposable;
    .locals 2
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/do;->case:Lio/reactivex/functions/Consumer;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;
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
            "Lio/reactivex/functions/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "onCallback is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/support/v4/p8;

    invoke-direct {v0, p1}, Landroid/support/v4/p8;-><init>(Lio/reactivex/functions/BiConsumer;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/SingleObserver;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
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
            "-TT;>;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 5
    sget-object v0, Lio/reactivex/internal/functions/do;->case:Lio/reactivex/functions/Consumer;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
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
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    .line 6
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 7
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Landroid/support/v4/ar;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/ar;-><init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/SingleObserver;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/SingleObserver;)V
    .locals 2
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 10
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {p0, p1}, Landroid/support/v4/jp1;->t(Landroid/support/v4/jz1;Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 12
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/v4/jz1;->g0(Lio/reactivex/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {p1}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 17
    throw v0

    :catch_0
    move-exception p1

    .line 18
    throw p1
.end method

.method public final subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;
    .locals 0
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/SingleObserver;)V

    return-object p1
.end method

.method public final synchronized(Lio/reactivex/functions/Action;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onDispose is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/super;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/super;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Action;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final t0()Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/super;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/super;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0, v0}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/SingleObserver;)V

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
    invoke-virtual {p0, v0}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/SingleObserver;)V

    return-object v0
.end method

.method public final transient(Lio/reactivex/functions/Consumer;)Landroid/support/v4/jz1;
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
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterSuccess is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/class;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/class;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Consumer;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

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
    invoke-virtual {p0, v0}, Landroid/support/v4/jz1;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/ma;->if()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final u0()Lio/reactivex/for;
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
    new-instance v0, Lio/reactivex/internal/operators/single/synchronized;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/synchronized;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->h(Lio/reactivex/for;)Lio/reactivex/for;

    move-result-object v0

    return-object v0
.end method

.method public final v0()Ljava/util/concurrent/Future;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/observers/new;

    invoke-direct {v0}, Lio/reactivex/internal/observers/new;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v4/jz1;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final volatile(Lio/reactivex/SingleSource;)Landroid/support/v4/jz1;
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
            "Lio/reactivex/SingleSource<",
            "TU;>;)",
            "Landroid/support/v4/jz1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/this;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/this;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object p1

    return-object p1
.end method

.method public final w0()Landroid/support/v4/fy0;
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
    new-instance v0, Lio/reactivex/internal/operators/maybe/interface;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/interface;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->e(Landroid/support/v4/fy0;)Landroid/support/v4/fy0;

    move-result-object v0

    return-object v0
.end method

.method public final x()Landroid/support/v4/jz1;
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
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/single/private;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/private;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->g(Landroid/support/v4/jz1;)Landroid/support/v4/jz1;

    move-result-object v0

    return-object v0
.end method

.method public final x0()Lio/reactivex/new;
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
    new-instance v0, Lio/reactivex/internal/operators/single/a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/a;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->i(Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object v0

    return-object v0
.end method

.method public final y()Landroid/support/v4/np;
    .locals 1
    .annotation runtime Landroid/support/v4/cs1;
        value = "none"
    .end annotation

    .annotation runtime Landroid/support/v4/gl;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/super;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/super;-><init>(Lio/reactivex/SingleSource;)V

    invoke-static {v0}, Landroid/support/v4/jp1;->b(Landroid/support/v4/np;)Landroid/support/v4/np;

    move-result-object v0

    return-object v0
.end method
