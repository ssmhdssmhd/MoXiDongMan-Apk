.class public final Lcom/google/common/util/concurrent/private$try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation build Landroid/support/v4/lf;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/private;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final do:Z

.field private final if:Lcom/google/common/collect/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLcom/google/common/collect/v0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/private$try;->do:Z

    .line 4
    iput-object p2, p0, Lcom/google/common/util/concurrent/private$try;->if:Lcom/google/common/collect/v0;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/google/common/collect/v0;Lcom/google/common/util/concurrent/private$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/private$try;-><init>(ZLcom/google/common/collect/v0;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/super;

    iget-object v1, p0, Lcom/google/common/util/concurrent/private$try;->if:Lcom/google/common/collect/v0;

    iget-boolean v2, p0, Lcom/google/common/util/concurrent/private$try;->do:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/common/util/concurrent/super;-><init>(Lcom/google/common/collect/r0;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public for(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/private$try$do;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/private$try$do;-><init>(Lcom/google/common/util/concurrent/private$try;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/private$try;->do(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public if(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/AsyncCallable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/super;

    iget-object v1, p0, Lcom/google/common/util/concurrent/private$try;->if:Lcom/google/common/collect/v0;

    iget-boolean v2, p0, Lcom/google/common/util/concurrent/private$try;->do:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/common/util/concurrent/super;-><init>(Lcom/google/common/collect/r0;ZLjava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AsyncCallable;)V

    return-object v0
.end method
