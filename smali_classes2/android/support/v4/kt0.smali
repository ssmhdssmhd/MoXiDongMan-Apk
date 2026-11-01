.class public Landroid/support/v4/kt0;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final do:Lcom/google/common/util/concurrent/while;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/google/common/util/concurrent/while;

    invoke-direct {p1}, Lcom/google/common/util/concurrent/while;-><init>()V

    iput-object p1, p0, Landroid/support/v4/kt0;->do:Lcom/google/common/util/concurrent/while;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    new-instance p1, Lcom/google/common/util/concurrent/while;

    invoke-direct {p1}, Lcom/google/common/util/concurrent/while;-><init>()V

    iput-object p1, p0, Landroid/support/v4/kt0;->do:Lcom/google/common/util/concurrent/while;

    return-void
.end method

.method public static do(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/support/v4/kt0;
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
            "Landroid/support/v4/kt0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/kt0;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/kt0;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static if(Ljava/util/concurrent/Callable;)Landroid/support/v4/kt0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Landroid/support/v4/kt0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/kt0;

    invoke-direct {v0, p0}, Landroid/support/v4/kt0;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/kt0;->do:Lcom/google/common/util/concurrent/while;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/while;->do(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public done()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/kt0;->do:Lcom/google/common/util/concurrent/while;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/while;->if()V

    return-void
.end method
