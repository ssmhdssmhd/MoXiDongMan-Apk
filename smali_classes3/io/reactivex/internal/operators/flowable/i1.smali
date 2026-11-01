.class public final Lio/reactivex/internal/operators/flowable/i1;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/i1$do;,
        Lio/reactivex/internal/operators/flowable/i1$if;,
        Lio/reactivex/internal/operators/flowable/i1$for;
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
.field public final case:Z

.field public final for:J

.field public final new:Ljava/util/concurrent/TimeUnit;

.field public final try:Lio/reactivex/try;


# direct methods
.method public constructor <init>(Lio/reactivex/for;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/i1;->for:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/i1;->new:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/i1;->try:Lio/reactivex/try;

    .line 5
    iput-boolean p6, p0, Lio/reactivex/internal/operators/flowable/i1;->case:Z

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v1, Landroid/support/v4/bx1;

    invoke-direct {v1, p1}, Landroid/support/v4/bx1;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 2
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/i1;->case:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v6, Lio/reactivex/internal/operators/flowable/i1$do;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/i1;->for:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/i1;->new:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/i1;->try:Lio/reactivex/try;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/i1$do;-><init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    invoke-virtual {p1, v6}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v6, Lio/reactivex/internal/operators/flowable/i1$if;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/i1;->for:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/i1;->new:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/i1;->try:Lio/reactivex/try;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/i1$if;-><init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    invoke-virtual {p1, v6}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    :goto_0
    return-void
.end method
