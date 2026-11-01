.class public final Lio/reactivex/internal/operators/flowable/synchronized;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/synchronized$do;,
        Lio/reactivex/internal/operators/flowable/synchronized$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/do<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final case:Lio/reactivex/functions/Action;

.field public final for:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final new:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final try:Lio/reactivex/functions/Action;


# direct methods
.method public constructor <init>(Lio/reactivex/for;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/synchronized;->for:Lio/reactivex/functions/Consumer;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/synchronized;->new:Lio/reactivex/functions/Consumer;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/synchronized;->try:Lio/reactivex/functions/Action;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/synchronized;->case:Lio/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v7, Lio/reactivex/internal/operators/flowable/synchronized$do;

    move-object v2, p1

    check-cast v2, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/synchronized;->for:Lio/reactivex/functions/Consumer;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/synchronized;->new:Lio/reactivex/functions/Consumer;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/synchronized;->try:Lio/reactivex/functions/Action;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/synchronized;->case:Lio/reactivex/functions/Action;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/synchronized$do;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    invoke-virtual {v0, v7}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v7, Lio/reactivex/internal/operators/flowable/synchronized$if;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/synchronized;->for:Lio/reactivex/functions/Consumer;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/synchronized;->new:Lio/reactivex/functions/Consumer;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/synchronized;->try:Lio/reactivex/functions/Action;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/synchronized;->case:Lio/reactivex/functions/Action;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/synchronized$if;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    invoke-virtual {v0, v7}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    :goto_0
    return-void
.end method
