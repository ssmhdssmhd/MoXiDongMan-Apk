.class abstract Lcom/google/common/util/concurrent/goto;
.super Lcom/google/common/util/concurrent/this;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/goto$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/this<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final throw:Ljava/util/logging/Logger;


# instance fields
.field private const:Lcom/google/common/collect/r0;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r0<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field private final final:Z

.field private final super:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/goto;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/goto;->throw:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/r0;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/this;-><init>(I)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/r0;

    iput-object p1, p0, Lcom/google/common/util/concurrent/goto;->const:Lcom/google/common/collect/r0;

    .line 3
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/goto;->final:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/common/util/concurrent/goto;->super:Z

    return-void
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/goto;ILjava/util/concurrent/Future;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/goto;->e(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/common/util/concurrent/goto;Lcom/google/common/collect/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/goto;->f(Lcom/google/common/collect/r0;)V

    return-void
.end method

.method private static c(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private e(ILjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/google/common/util/concurrent/private;->goto(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/goto;->d(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/goto;->h(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/goto;->h(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private f(Lcom/google/common/collect/r0;)V
    .locals 3
    .param p1    # Lcom/google/common/collect/r0;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/this;->implements()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Less than 0 remaining futures"

    .line 2
    invoke-static {v1, v2}, Landroid/support/v4/af1;->u(ZLjava/lang/Object;)V

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/goto;->k(Lcom/google/common/collect/r0;)V

    :cond_1
    return-void
.end method

.method private h(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/goto;->final:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->private(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/this;->instanceof()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/goto;->c(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/google/common/util/concurrent/goto;->j(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1}, Lcom/google/common/util/concurrent/goto;->j(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static j(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    const-string v0, "Input Future failed with Error"

    goto :goto_0

    :cond_0
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    .line 2
    :goto_0
    sget-object v1, Lcom/google/common/util/concurrent/goto;->throw:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private k(Lcom/google/common/collect/r0;)V
    .locals 3
    .param p1    # Lcom/google/common/collect/r0;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1}, Lcom/google/common/collect/r0;->iterator()Landroid/support/v4/ac2;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 2
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/common/util/concurrent/goto;->e(ILjava/util/concurrent/Future;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/this;->transient()V

    .line 5
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/goto;->g()V

    .line 6
    sget-object p1, Lcom/google/common/util/concurrent/goto$for;->ALL_INPUT_FUTURES_PROCESSED:Lcom/google/common/util/concurrent/goto$for;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/goto;->l(Lcom/google/common/util/concurrent/goto$for;)V

    return-void
.end method

.method public static synthetic synchronized(Lcom/google/common/util/concurrent/goto;Lcom/google/common/collect/r0;)Lcom/google/common/collect/r0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/goto;->const:Lcom/google/common/collect/r0;

    return-object p1
.end method


# virtual methods
.method public abstract d(ILjava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method

.method public final default()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/goto;->const:Lcom/google/common/collect/r0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "futures="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->default()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final final()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->final()V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/goto;->const:Lcom/google/common/collect/r0;

    .line 3
    sget-object v1, Lcom/google/common/util/concurrent/goto$for;->OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/goto$for;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/goto;->l(Lcom/google/common/util/concurrent/goto$for;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$this;->isCancelled()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->continue()Z

    move-result v1

    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/r0;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 7
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public abstract g()V
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/goto;->const:Lcom/google/common/collect/r0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/goto;->g()V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/goto;->final:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/google/common/util/concurrent/goto;->const:Lcom/google/common/collect/r0;

    invoke-virtual {v1}, Lcom/google/common/collect/r0;->iterator()Landroid/support/v4/ac2;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    add-int/lit8 v3, v0, 0x1

    .line 5
    new-instance v4, Lcom/google/common/util/concurrent/goto$do;

    invoke-direct {v4, p0, v2, v0}, Lcom/google/common/util/concurrent/goto$do;-><init>(Lcom/google/common/util/concurrent/goto;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    .line 6
    invoke-static {}, Lcom/google/common/util/concurrent/implements;->for()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 7
    invoke-interface {v2, v4, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v0, v3

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/goto;->super:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/util/concurrent/goto;->const:Lcom/google/common/collect/r0;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 9
    :goto_1
    new-instance v1, Lcom/google/common/util/concurrent/goto$if;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/goto$if;-><init>(Lcom/google/common/util/concurrent/goto;Lcom/google/common/collect/r0;)V

    .line 10
    iget-object v0, p0, Lcom/google/common/util/concurrent/goto;->const:Lcom/google/common/collect/r0;

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/implements;->for()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public l(Lcom/google/common/util/concurrent/goto$for;)V
    .locals 0
    .annotation build Landroid/support/v4/j91;
    .end annotation

    .annotation build Landroid/support/v4/jd0;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/goto;->const:Lcom/google/common/collect/r0;

    return-void
.end method

.method public final protected(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$this;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->do()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/goto;->c(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method
