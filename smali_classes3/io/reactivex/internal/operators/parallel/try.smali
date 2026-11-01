.class public final Lio/reactivex/internal/operators/parallel/try;
.super Landroid/support/v4/ub1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/try$do;
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
.field public final do:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final for:I

.field public final if:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/ub1;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/try;->do:Lorg/reactivestreams/Publisher;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/parallel/try;->if:I

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/parallel/try;->for:I

    return-void
.end method


# virtual methods
.method public strictfp()I
    .locals 1

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/parallel/try;->if:I

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 3
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
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/try;->do:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/parallel/try$do;

    iget v2, p0, Lio/reactivex/internal/operators/parallel/try;->for:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/parallel/try$do;-><init>([Lorg/reactivestreams/Subscriber;I)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
