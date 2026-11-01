.class public final Lio/reactivex/internal/operators/parallel/catch;
.super Lio/reactivex/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/catch$for;,
        Lio/reactivex/internal/operators/parallel/catch$do;,
        Lio/reactivex/internal/operators/parallel/catch$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/for<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final for:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field public final if:Landroid/support/v4/ub1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/ub1<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/ub1;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/ub1<",
            "+TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/for;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/catch;->if:Landroid/support/v4/ub1;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/catch;->for:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/parallel/catch$if;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/catch;->if:Landroid/support/v4/ub1;

    invoke-virtual {v1}, Landroid/support/v4/ub1;->strictfp()I

    move-result v1

    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/catch;->for:Lio/reactivex/functions/BiFunction;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/parallel/catch$if;-><init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/functions/BiFunction;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/catch;->if:Landroid/support/v4/ub1;

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/catch$if;->subscribers:[Lio/reactivex/internal/operators/parallel/catch$do;

    invoke-virtual {p1, v0}, Landroid/support/v4/ub1;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
