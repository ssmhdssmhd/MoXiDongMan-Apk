.class final Lrx/internal/operators/q1$if;
.super Landroid/support/v4/y22;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final case:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final else:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final for:Lrx/if;

.field public final if:J

.field public final new:I

.field public final try:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;IJLrx/if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;IJ",
            "Lrx/if;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/q1$if;->do:Landroid/support/v4/y22;

    .line 3
    iput p2, p0, Lrx/internal/operators/q1$if;->new:I

    .line 4
    iput-wide p3, p0, Lrx/internal/operators/q1$if;->if:J

    .line 5
    iput-object p5, p0, Lrx/internal/operators/q1$if;->for:Lrx/if;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/q1$if;->try:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/q1$if;->case:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/q1$if;->else:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lrx/internal/operators/return;->try(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public do(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lrx/internal/operators/q1$if;->if:J

    sub-long/2addr p1, v0

    .line 2
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/q1$if;->else:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/q1$if;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lrx/internal/operators/q1$if;->else:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public if(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lrx/internal/operators/q1$if;->try:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/internal/operators/q1$if;->case:Ljava/util/ArrayDeque;

    iget-object v4, p0, Lrx/internal/operators/q1$if;->do:Landroid/support/v4/y22;

    move-wide v1, p1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/u6;->goto(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Landroid/support/v4/y22;Lrx/functions/Func1;)Z

    return-void
.end method

.method public onCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/q1$if;->for:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->if()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/q1$if;->do(J)V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/q1$if;->else:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 3
    iget-object v0, p0, Lrx/internal/operators/q1$if;->try:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/internal/operators/q1$if;->case:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lrx/internal/operators/q1$if;->do:Landroid/support/v4/y22;

    invoke-static {v0, v1, v2, p0}, Landroid/support/v4/u6;->try(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Landroid/support/v4/y22;Lrx/functions/Func1;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/q1$if;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/q1$if;->else:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 3
    iget-object v0, p0, Lrx/internal/operators/q1$if;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lrx/internal/operators/q1$if;->new:I

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lrx/internal/operators/q1$if;->for:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->if()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lrx/internal/operators/q1$if;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget v3, p0, Lrx/internal/operators/q1$if;->new:I

    if-ne v2, v3, :cond_0

    .line 4
    iget-object v2, p0, Lrx/internal/operators/q1$if;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lrx/internal/operators/q1$if;->else:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/q1$if;->do(J)V

    .line 7
    iget-object v2, p0, Lrx/internal/operators/q1$if;->case:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lrx/internal/operators/q1$if;->else:Ljava/util/ArrayDeque;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
