.class public final Lio/reactivex/internal/operators/parallel/if;
.super Landroid/support/v4/ub1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/if$if;,
        Lio/reactivex/internal/operators/parallel/if$for;
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
            "TT;>;"
        }
    .end annotation
.end field

.field public final for:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/do;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/ub1;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/ub1<",
            "TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/do;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/ub1;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/if;->do:Landroid/support/v4/ub1;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/if;->if:Lio/reactivex/functions/Consumer;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/if;->for:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method public strictfp()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/if;->do:Landroid/support/v4/ub1;

    invoke-virtual {v0}, Landroid/support/v4/ub1;->strictfp()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 7
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

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    aget-object v3, p1, v2

    .line 5
    instance-of v4, v3, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v4, :cond_1

    .line 6
    new-instance v4, Lio/reactivex/internal/operators/parallel/if$if;

    check-cast v3, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/if;->if:Lio/reactivex/functions/Consumer;

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/if;->for:Lio/reactivex/functions/BiFunction;

    invoke-direct {v4, v3, v5, v6}, Lio/reactivex/internal/operators/parallel/if$if;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/BiFunction;)V

    aput-object v4, v1, v2

    goto :goto_1

    .line 7
    :cond_1
    new-instance v4, Lio/reactivex/internal/operators/parallel/if$for;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/if;->if:Lio/reactivex/functions/Consumer;

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/if;->for:Lio/reactivex/functions/BiFunction;

    invoke-direct {v4, v3, v5, v6}, Lio/reactivex/internal/operators/parallel/if$for;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/BiFunction;)V

    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/if;->do:Landroid/support/v4/ub1;

    invoke-virtual {p1, v1}, Landroid/support/v4/ub1;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
