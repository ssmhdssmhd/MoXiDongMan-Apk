.class public final Lio/reactivex/internal/operators/flowable/k0;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/k0$do;
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

.field public final for:I

.field public final new:Z

.field public final try:Z


# direct methods
.method public constructor <init>(Lio/reactivex/for;IZZLio/reactivex/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;IZZ",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput p2, p0, Lio/reactivex/internal/operators/flowable/k0;->for:I

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/k0;->new:Z

    .line 4
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/k0;->try:Z

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/k0;->case:Lio/reactivex/functions/Action;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v7, Lio/reactivex/internal/operators/flowable/k0$do;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/k0;->for:I

    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/k0;->new:Z

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/k0;->try:Z

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/k0;->case:Lio/reactivex/functions/Action;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/k0$do;-><init>(Lorg/reactivestreams/Subscriber;IZZLio/reactivex/functions/Action;)V

    invoke-virtual {v0, v7}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
