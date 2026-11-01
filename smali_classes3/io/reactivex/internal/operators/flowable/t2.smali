.class public final Lio/reactivex/internal/operators/flowable/t2;
.super Lio/reactivex/internal/operators/flowable/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/t2$for;,
        Lio/reactivex/internal/operators/flowable/t2$do;,
        Lio/reactivex/internal/operators/flowable/t2$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/do<",
        "TT;",
        "Lio/reactivex/for<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final case:Lio/reactivex/try;

.field public final else:J

.field public final for:J

.field public final goto:I

.field public final new:J

.field public final this:Z

.field public final try:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/for;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            "JIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/do;-><init>(Lio/reactivex/for;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/t2;->for:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/t2;->new:J

    .line 4
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/t2;->try:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/t2;->case:Lio/reactivex/try;

    .line 6
    iput-wide p8, p0, Lio/reactivex/internal/operators/flowable/t2;->else:J

    .line 7
    iput p10, p0, Lio/reactivex/internal/operators/flowable/t2;->goto:I

    .line 8
    iput-boolean p11, p0, Lio/reactivex/internal/operators/flowable/t2;->this:Z

    return-void
.end method


# virtual methods
.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/for<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v1, Landroid/support/v4/bx1;

    invoke-direct {v1, p1}, Landroid/support/v4/bx1;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 2
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/t2;->for:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/t2;->new:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 3
    iget-wide v7, p0, Lio/reactivex/internal/operators/flowable/t2;->else:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v7, v4

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v7, Lio/reactivex/internal/operators/flowable/t2$if;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/t2;->for:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/t2;->try:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/t2;->case:Lio/reactivex/try;

    iget v6, p0, Lio/reactivex/internal/operators/flowable/t2;->goto:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/t2$if;-><init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;I)V

    invoke-virtual {p1, v7}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v10, Lio/reactivex/internal/operators/flowable/t2$do;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/t2;->try:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/t2;->case:Lio/reactivex/try;

    iget v6, p0, Lio/reactivex/internal/operators/flowable/t2;->goto:I

    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/t2;->this:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/flowable/t2$do;-><init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/try;IJZ)V

    invoke-virtual {p1, v10}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/do;->if:Lio/reactivex/for;

    new-instance v9, Lio/reactivex/internal/operators/flowable/t2$for;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/t2;->try:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/t2;->case:Lio/reactivex/try;

    .line 7
    invoke-virtual {v0}, Lio/reactivex/try;->if()Lio/reactivex/try$for;

    move-result-object v7

    iget v8, p0, Lio/reactivex/internal/operators/flowable/t2;->goto:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/reactivex/internal/operators/flowable/t2$for;-><init>(Lorg/reactivestreams/Subscriber;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/try$for;I)V

    .line 8
    invoke-virtual {p1, v9}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
