.class public final Lio/reactivex/internal/operators/flowable/super;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/super$do;,
        Lio/reactivex/internal/operators/flowable/super$for;,
        Lio/reactivex/internal/operators/flowable/super$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/operators/flowable/do<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final case:Lio/reactivex/try;

.field public final else:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final for:J

.field public final goto:I

.field public final new:J

.field public final this:Z

.field public final try:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/for;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;Ljava/util/concurrent/Callable;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/super;->for:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/super;->new:J

    .line 4
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/super;->try:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/super;->case:Lio/reactivex/try;

    .line 6
    iput-object p8, p0, Lio/reactivex/internal/operators/flowable/super;->else:Ljava/util/concurrent/Callable;

    .line 7
    iput p9, p0, Lio/reactivex/internal/operators/flowable/super;->goto:I

    .line 8
    iput-boolean p10, p0, Lio/reactivex/internal/operators/flowable/super;->this:Z

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/super;->for:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/super;->new:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lio/reactivex/internal/operators/flowable/super;->goto:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v8, Lio/reactivex/internal/operators/flowable/super$if;

    new-instance v2, Landroid/support/v4/bx1;

    invoke-direct {v2, p1}, Landroid/support/v4/bx1;-><init>(Lorg/reactivestreams/Subscriber;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/super;->else:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/super;->for:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/super;->try:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/super;->case:Lio/reactivex/try;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/super$if;-><init>(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    invoke-virtual {v0, v8}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/super;->case:Lio/reactivex/try;

    invoke-virtual {v0}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object v9

    .line 4
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/super;->for:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/super;->new:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v10, Lio/reactivex/internal/operators/flowable/super$do;

    new-instance v2, Landroid/support/v4/bx1;

    invoke-direct {v2, p1}, Landroid/support/v4/bx1;-><init>(Lorg/reactivestreams/Subscriber;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/super;->else:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/super;->for:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/super;->try:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, Lio/reactivex/internal/operators/flowable/super;->goto:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/super;->this:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/reactivex/internal/operators/flowable/super$do;-><init>(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/try$for;)V

    invoke-virtual {v0, v10}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v10, Lio/reactivex/internal/operators/flowable/super$for;

    new-instance v2, Landroid/support/v4/bx1;

    invoke-direct {v2, p1}, Landroid/support/v4/bx1;-><init>(Lorg/reactivestreams/Subscriber;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/super;->else:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/super;->for:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/super;->new:J

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/super;->try:Ljava/util/concurrent/TimeUnit;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/reactivex/internal/operators/flowable/super$for;-><init>(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/Callable;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try$for;)V

    invoke-virtual {v0, v10}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
