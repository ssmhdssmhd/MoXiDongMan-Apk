.class final Lcom/google/common/util/concurrent/super;
.super Lcom/google/common/util/concurrent/goto;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/super$if;,
        Lcom/google/common/util/concurrent/super$do;,
        Lcom/google/common/util/concurrent/super$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/goto<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private while:Lcom/google/common/util/concurrent/super$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/super<",
            "TV;>.for<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/r0;ZLjava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AsyncCallable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/AsyncCallable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/util/concurrent/goto;-><init>(Lcom/google/common/collect/r0;ZZ)V

    .line 2
    new-instance p1, Lcom/google/common/util/concurrent/super$do;

    invoke-direct {p1, p0, p4, p3}, Lcom/google/common/util/concurrent/super$do;-><init>(Lcom/google/common/util/concurrent/super;Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/super;->while:Lcom/google/common/util/concurrent/super$for;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/goto;->i()V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/r0;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/util/concurrent/goto;-><init>(Lcom/google/common/collect/r0;ZZ)V

    .line 5
    new-instance p1, Lcom/google/common/util/concurrent/super$if;

    invoke-direct {p1, p0, p4, p3}, Lcom/google/common/util/concurrent/super$if;-><init>(Lcom/google/common/util/concurrent/super;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/super;->while:Lcom/google/common/util/concurrent/super$for;

    .line 6
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/goto;->i()V

    return-void
.end method

.method public static synthetic m(Lcom/google/common/util/concurrent/super;Lcom/google/common/util/concurrent/super$for;)Lcom/google/common/util/concurrent/super$for;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/super;->while:Lcom/google/common/util/concurrent/super$for;

    return-object p1
.end method


# virtual methods
.method public d(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/super;->while:Lcom/google/common/util/concurrent/super$for;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/super$for;->execute()V

    :cond_0
    return-void
.end method

.method public l(Lcom/google/common/util/concurrent/goto$for;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/goto;->l(Lcom/google/common/util/concurrent/goto$for;)V

    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/goto$for;->OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/goto$for;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/common/util/concurrent/super;->while:Lcom/google/common/util/concurrent/super$for;

    :cond_0
    return-void
.end method

.method public switch()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/super;->while:Lcom/google/common/util/concurrent/super$for;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/interface;->interruptTask()V

    :cond_0
    return-void
.end method
