.class final Lrx/internal/operators/OperatorReplay$class;
.super Lrx/internal/operators/OperatorReplay$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "class"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorReplay$goto<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ffd21f3bea38aacL


# instance fields
.field public final limit:I

.field public final maxAgeInMillis:J

.field public final scheduler:Lrx/if;


# direct methods
.method public constructor <init>(IJLrx/if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$goto;-><init>()V

    .line 2
    iput-object p4, p0, Lrx/internal/operators/OperatorReplay$class;->scheduler:Lrx/if;

    .line 3
    iput p1, p0, Lrx/internal/operators/OperatorReplay$class;->limit:I

    .line 4
    iput-wide p2, p0, Lrx/internal/operators/OperatorReplay$class;->maxAgeInMillis:J

    return-void
.end method


# virtual methods
.method public enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/i72;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$class;->scheduler:Lrx/if;

    invoke-virtual {v1}, Lrx/if;->if()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Landroid/support/v4/i72;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method

.method public getInitialHead()Lrx/internal/operators/OperatorReplay$break;
    .locals 8

    .line 1
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$class;->scheduler:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->if()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$class;->maxAgeInMillis:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$break;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$break;

    :goto_0
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    if-eqz v2, :cond_1

    .line 4
    iget-object v4, v2, Lrx/internal/operators/OperatorReplay$break;->value:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v4}, Lrx/internal/operators/OperatorReplay$class;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 6
    invoke-static {v5}, Lrx/internal/operators/return;->case(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lrx/internal/operators/return;->else(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    check-cast v4, Landroid/support/v4/i72;

    invoke-virtual {v4}, Landroid/support/v4/i72;->do()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$break;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method

.method public leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/i72;

    invoke-virtual {p1}, Landroid/support/v4/i72;->if()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public truncate()V
    .locals 9

    .line 1
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$class;->scheduler:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->if()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$class;->maxAgeInMillis:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$break;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$break;

    const/4 v4, 0x0

    :goto_0
    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    if-eqz v2, :cond_1

    .line 4
    iget v5, p0, Lrx/internal/operators/OperatorReplay$goto;->size:I

    iget v6, p0, Lrx/internal/operators/OperatorReplay$class;->limit:I

    if-le v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    .line 5
    iput v5, p0, Lrx/internal/operators/OperatorReplay$goto;->size:I

    .line 6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$break;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v5, v2, Lrx/internal/operators/OperatorReplay$break;->value:Ljava/lang/Object;

    check-cast v5, Landroid/support/v4/i72;

    .line 8
    invoke-virtual {v5}, Landroid/support/v4/i72;->do()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-gtz v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 9
    iget v3, p0, Lrx/internal/operators/OperatorReplay$goto;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lrx/internal/operators/OperatorReplay$goto;->size:I

    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$break;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {p0, v3}, Lrx/internal/operators/OperatorReplay$goto;->setFirst(Lrx/internal/operators/OperatorReplay$break;)V

    :cond_2
    return-void
.end method

.method public truncateFinal()V
    .locals 10

    .line 1
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$class;->scheduler:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->if()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$class;->maxAgeInMillis:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$break;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$break;

    const/4 v4, 0x0

    :goto_0
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    if-eqz v2, :cond_0

    .line 4
    iget v5, p0, Lrx/internal/operators/OperatorReplay$goto;->size:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 5
    iget-object v5, v2, Lrx/internal/operators/OperatorReplay$break;->value:Ljava/lang/Object;

    check-cast v5, Landroid/support/v4/i72;

    .line 6
    invoke-virtual {v5}, Landroid/support/v4/i72;->do()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gtz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 7
    iget v3, p0, Lrx/internal/operators/OperatorReplay$goto;->size:I

    sub-int/2addr v3, v6

    iput v3, p0, Lrx/internal/operators/OperatorReplay$goto;->size:I

    .line 8
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$break;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {p0, v3}, Lrx/internal/operators/OperatorReplay$goto;->setFirst(Lrx/internal/operators/OperatorReplay$break;)V

    :cond_1
    return-void
.end method
