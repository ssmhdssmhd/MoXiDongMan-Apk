.class Lrx/internal/operators/j1$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/j1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private do:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/support/v4/i72<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final synthetic for:Lrx/internal/operators/j1;

.field public final synthetic if:Landroid/support/v4/y22;


# direct methods
.method public constructor <init>(Lrx/internal/operators/j1;Landroid/support/v4/y22;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/j1$do;->for:Lrx/internal/operators/j1;

    iput-object p3, p0, Lrx/internal/operators/j1$do;->if:Landroid/support/v4/y22;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    .line 2
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/j1$do;->do:Ljava/util/Deque;

    return-void
.end method

.method private do(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrx/internal/operators/j1$do;->for:Lrx/internal/operators/j1;

    iget-wide v0, v0, Lrx/internal/operators/j1;->do:J

    sub-long/2addr p1, v0

    .line 2
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/j1$do;->do:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lrx/internal/operators/j1$do;->do:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/i72;

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/i72;->do()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_0

    .line 5
    iget-object v1, p0, Lrx/internal/operators/j1$do;->do:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lrx/internal/operators/j1$do;->if:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/i72;->if()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/j1$do;->for:Lrx/internal/operators/j1;

    iget-object v0, v0, Lrx/internal/operators/j1;->if:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->if()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lrx/internal/operators/j1$do;->do(J)V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/j1$do;->if:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/j1$do;->if:Landroid/support/v4/y22;

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
    iget-object v0, p0, Lrx/internal/operators/j1$do;->for:Lrx/internal/operators/j1;

    iget-object v0, v0, Lrx/internal/operators/j1;->if:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->if()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, v0, v1}, Lrx/internal/operators/j1$do;->do(J)V

    .line 3
    iget-object v2, p0, Lrx/internal/operators/j1$do;->do:Ljava/util/Deque;

    new-instance v3, Landroid/support/v4/i72;

    invoke-direct {v3, v0, v1, p1}, Landroid/support/v4/i72;-><init>(JLjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    return-void
.end method
