.class public final Lio/reactivex/internal/operators/flowable/abstract;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/abstract$do;,
        Lio/reactivex/internal/operators/flowable/abstract$if;
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

.field public final new:Ljava/util/concurrent/TimeUnit;

.field public final try:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/for;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/abstract;->for:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/abstract;->new:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/abstract;->try:Lio/reactivex/try;

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

    new-instance v7, Lio/reactivex/internal/operators/flowable/abstract$if;

    new-instance v2, Landroid/support/v4/bx1;

    invoke-direct {v2, p1}, Landroid/support/v4/bx1;-><init>(Lorg/reactivestreams/Subscriber;)V

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/abstract;->for:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/abstract;->new:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/abstract;->try:Lio/reactivex/try;

    .line 2
    invoke-virtual {p1}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/abstract$if;-><init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try$for;)V

    .line 3
    invoke-virtual {v0, v7}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
