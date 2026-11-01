.class final Lio/reactivex/internal/operators/flowable/q$for;
.super Landroid/support/v4/fi0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/fi0<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field public final for:Lio/reactivex/internal/operators/flowable/q$new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/q$new<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/q$new;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/reactivex/internal/operators/flowable/q$new<",
            "TT;TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/fi0;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/q$for;->for:Lio/reactivex/internal/operators/flowable/q$new;

    return-void
.end method

.method public static M7(Ljava/lang/Object;ILio/reactivex/internal/operators/flowable/q$if;Z)Lio/reactivex/internal/operators/flowable/q$for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lio/reactivex/internal/operators/flowable/q$if<",
            "*TK;TT;>;Z)",
            "Lio/reactivex/internal/operators/flowable/q$for<",
            "TK;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/q$new;

    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/internal/operators/flowable/q$new;-><init>(ILio/reactivex/internal/operators/flowable/q$if;Ljava/lang/Object;Z)V

    .line 2
    new-instance p1, Lio/reactivex/internal/operators/flowable/q$for;

    invoke-direct {p1, p0, v0}, Lio/reactivex/internal/operators/flowable/q$for;-><init>(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/q$new;)V

    return-object p1
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$for;->for:Lio/reactivex/internal/operators/flowable/q$new;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/q$new;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$for;->for:Lio/reactivex/internal/operators/flowable/q$new;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/q$new;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$for;->for:Lio/reactivex/internal/operators/flowable/q$new;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/q$new;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q$for;->for:Lio/reactivex/internal/operators/flowable/q$new;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/q$new;->onNext(Ljava/lang/Object;)V

    return-void
.end method
