.class public final Lio/reactivex/internal/operators/flowable/return;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/return$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/do<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final case:Lio/reactivex/internal/util/try;

.field public final for:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final new:I

.field public final try:I


# direct methods
.method public constructor <init>(Lio/reactivex/for;Lio/reactivex/functions/Function;IILio/reactivex/internal/util/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/try;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/return;->for:Lio/reactivex/functions/Function;

    .line 3
    iput p3, p0, Lio/reactivex/internal/operators/flowable/return;->new:I

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/flowable/return;->try:I

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/return;->case:Lio/reactivex/internal/util/try;

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v7, Lio/reactivex/internal/operators/flowable/return$do;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/return;->for:Lio/reactivex/functions/Function;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/return;->new:I

    iget v5, p0, Lio/reactivex/internal/operators/flowable/return;->try:I

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/return;->case:Lio/reactivex/internal/util/try;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/return$do;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;IILio/reactivex/internal/util/try;)V

    invoke-virtual {v0, v7}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
