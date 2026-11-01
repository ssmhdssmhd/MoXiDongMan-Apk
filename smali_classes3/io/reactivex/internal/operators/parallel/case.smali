.class public final Lio/reactivex/internal/operators/parallel/case;
.super Lio/reactivex/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/case$do;,
        Lio/reactivex/internal/operators/parallel/case$new;,
        Lio/reactivex/internal/operators/parallel/case$if;,
        Lio/reactivex/internal/operators/parallel/case$for;
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
.field public final for:I

.field public final if:Landroid/support/v4/ub1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/ub1<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final new:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/ub1;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/ub1<",
            "+TT;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/for;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/case;->if:Landroid/support/v4/ub1;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/parallel/case;->for:I

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/parallel/case;->new:Z

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/case;->new:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/case$new;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/case;->if:Landroid/support/v4/ub1;

    invoke-virtual {v1}, Landroid/support/v4/ub1;->strictfp()I

    move-result v1

    iget v2, p0, Lio/reactivex/internal/operators/parallel/case;->for:I

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/parallel/case$new;-><init>(Lorg/reactivestreams/Subscriber;II)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/parallel/case$if;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/case;->if:Landroid/support/v4/ub1;

    invoke-virtual {v1}, Landroid/support/v4/ub1;->strictfp()I

    move-result v1

    iget v2, p0, Lio/reactivex/internal/operators/parallel/case;->for:I

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/parallel/case$if;-><init>(Lorg/reactivestreams/Subscriber;II)V

    .line 4
    :goto_0
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/case;->if:Landroid/support/v4/ub1;

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/case$for;->subscribers:[Lio/reactivex/internal/operators/parallel/case$do;

    invoke-virtual {p1, v0}, Landroid/support/v4/ub1;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
