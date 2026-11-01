.class Lrx/internal/operators/g$if$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/g$if;->call()V
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
.field public do:Z

.field public final synthetic if:Lrx/internal/operators/g$if;


# direct methods
.method public constructor <init>(Lrx/internal/operators/g$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/g$if$do;->if:Lrx/internal/operators/g$if;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method

.method private do()V
    .locals 5

    .line 1
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/g$if$do;->if:Lrx/internal/operators/g$if;

    iget-object v0, v0, Lrx/internal/operators/g$if;->new:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-object v2, p0, Lrx/internal/operators/g$if$do;->if:Lrx/internal/operators/g$if;

    iget-object v2, v2, Lrx/internal/operators/g$if;->new:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x1

    sub-long v3, v0, v3

    invoke-virtual {v2, v0, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/g$if$do;->do:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/g$if$do;->do:Z

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/g$if$do;->if:Lrx/internal/operators/g$if;

    iget-object v0, v0, Lrx/internal/operators/g$if;->if:Landroid/support/v4/u22;

    invoke-static {}, Lrx/do;->if()Lrx/do;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/g$if$do;->do:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/g$if$do;->do:Z

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/g$if$do;->if:Lrx/internal/operators/g$if;

    iget-object v0, v0, Lrx/internal/operators/g$if;->if:Landroid/support/v4/u22;

    invoke-static {p1}, Lrx/do;->new(Ljava/lang/Throwable;)Lrx/do;

    move-result-object p1

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/g$if$do;->do:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/g$if$do;->if:Lrx/internal/operators/g$if;

    iget-object v0, v0, Lrx/internal/operators/g$if;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lrx/internal/operators/g$if$do;->do()V

    .line 4
    iget-object p1, p0, Lrx/internal/operators/g$if$do;->if:Lrx/internal/operators/g$if;

    iget-object p1, p1, Lrx/internal/operators/g$if;->for:Lrx/internal/producers/do;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lrx/internal/producers/do;->if(J)V

    :cond_0
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/g$if$do;->if:Lrx/internal/operators/g$if;

    iget-object v0, v0, Lrx/internal/operators/g$if;->for:Lrx/internal/producers/do;

    invoke-virtual {v0, p1}, Lrx/internal/producers/do;->for(Lrx/Producer;)V

    return-void
.end method
