.class public final Lio/reactivex/internal/operators/parallel/const;
.super Lio/reactivex/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/const$do;,
        Lio/reactivex/internal/operators/parallel/const$if;
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
.field public final for:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final if:Landroid/support/v4/ub1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/ub1<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/ub1;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/ub1<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/for;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/const;->if:Landroid/support/v4/ub1;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/const;->for:Ljava/util/Comparator;

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
    new-instance v0, Lio/reactivex/internal/operators/parallel/const$if;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/const;->if:Landroid/support/v4/ub1;

    invoke-virtual {v1}, Landroid/support/v4/ub1;->strictfp()I

    move-result v1

    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/const;->for:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/parallel/const$if;-><init>(Lorg/reactivestreams/Subscriber;ILjava/util/Comparator;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/const;->if:Landroid/support/v4/ub1;

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/const$if;->subscribers:[Lio/reactivex/internal/operators/parallel/const$do;

    invoke-virtual {p1, v0}, Landroid/support/v4/ub1;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
