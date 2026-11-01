.class public final Lio/reactivex/internal/operators/flowable/j0;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/j0$if;,
        Lio/reactivex/internal/operators/flowable/j0$for;,
        Lio/reactivex/internal/operators/flowable/j0$do;
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
.field public final for:Lio/reactivex/try;

.field public final new:Z

.field public final try:I


# direct methods
.method public constructor <init>(Lio/reactivex/for;Lio/reactivex/try;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;",
            "Lio/reactivex/try;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/j0;->for:Lio/reactivex/try;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/j0;->new:Z

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/j0;->try:I

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/j0;->for:Lio/reactivex/try;

    invoke-virtual {v0}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object v0

    .line 2
    instance-of v1, p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v2, Lio/reactivex/internal/operators/flowable/j0$if;

    check-cast p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/j0;->new:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/j0;->try:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/flowable/j0$if;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/try$for;ZI)V

    invoke-virtual {v1, v2}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v2, Lio/reactivex/internal/operators/flowable/j0$for;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/j0;->new:Z

    iget v4, p0, Lio/reactivex/internal/operators/flowable/j0;->try:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/flowable/j0$for;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/try$for;ZI)V

    invoke-virtual {v1, v2}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    :goto_0
    return-void
.end method
