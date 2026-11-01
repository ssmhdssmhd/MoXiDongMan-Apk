.class public final Lio/reactivex/internal/operators/flowable/l0;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/l0$if;
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
.field public final for:J

.field public final new:Lio/reactivex/functions/Action;

.field public final try:Lio/reactivex/do;


# direct methods
.method public constructor <init>(Lio/reactivex/for;JLio/reactivex/functions/Action;Lio/reactivex/do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;J",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/do;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/l0;->for:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/l0;->new:Lio/reactivex/functions/Action;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/l0;->try:Lio/reactivex/do;

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

    new-instance v7, Lio/reactivex/internal/operators/flowable/l0$if;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/l0;->new:Lio/reactivex/functions/Action;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/l0;->try:Lio/reactivex/do;

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/l0;->for:J

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/l0$if;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Action;Lio/reactivex/do;J)V

    invoke-virtual {v0, v7}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
