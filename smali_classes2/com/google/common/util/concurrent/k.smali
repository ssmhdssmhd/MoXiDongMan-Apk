.class Lcom/google/common/util/concurrent/k;
.super Lcom/google/common/util/concurrent/public$do;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/k$do;,
        Lcom/google/common/util/concurrent/k$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/public$do<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private volatile this:Lcom/google/common/util/concurrent/interface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/interface<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AsyncCallable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AsyncCallable<",
            "TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/common/util/concurrent/public$do;-><init>()V

    .line 4
    new-instance v0, Lcom/google/common/util/concurrent/k$do;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/k$do;-><init>(Lcom/google/common/util/concurrent/k;Lcom/google/common/util/concurrent/AsyncCallable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/k;->this:Lcom/google/common/util/concurrent/interface;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/public$do;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/k$if;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/k$if;-><init>(Lcom/google/common/util/concurrent/k;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/k;->this:Lcom/google/common/util/concurrent/interface;

    return-void
.end method

.method public static a(Lcom/google/common/util/concurrent/AsyncCallable;)Lcom/google/common/util/concurrent/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/AsyncCallable<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/k<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/k;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/k;-><init>(Lcom/google/common/util/concurrent/AsyncCallable;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/k;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/google/common/util/concurrent/k<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/k;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/k;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/k<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/k;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/k;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public default()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->this:Lcom/google/common/util/concurrent/interface;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->default()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->final()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->continue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->this:Lcom/google/common/util/concurrent/interface;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/interface;->interruptTask()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/common/util/concurrent/k;->this:Lcom/google/common/util/concurrent/interface;

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->this:Lcom/google/common/util/concurrent/interface;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/interface;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/util/concurrent/k;->this:Lcom/google/common/util/concurrent/interface;

    return-void
.end method
