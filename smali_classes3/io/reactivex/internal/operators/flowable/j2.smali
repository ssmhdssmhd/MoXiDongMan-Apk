.class public final Lio/reactivex/internal/operators/flowable/j2;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/j2$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/do<",
        "TT;",
        "Landroid/support/v4/e72<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final for:Lio/reactivex/try;

.field public final new:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/for;Ljava/util/concurrent/TimeUnit;Lio/reactivex/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/j2;->for:Lio/reactivex/try;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/j2;->new:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Landroid/support/v4/e72<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v1, Lio/reactivex/internal/operators/flowable/j2$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/j2;->new:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/j2;->for:Lio/reactivex/try;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/j2$do;-><init>(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    invoke-virtual {v0, v1}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
