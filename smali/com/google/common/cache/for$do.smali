.class final Lcom/google/common/cache/for$do;
.super Lcom/google/common/cache/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/for;->asyncReloading(Lcom/google/common/cache/for;Ljava/util/concurrent/Executor;)Lcom/google/common/cache/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/for<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/cache/for;

.field public final synthetic if:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/for;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/cache/for$do;->do:Lcom/google/common/cache/for;

    iput-object p2, p0, Lcom/google/common/cache/for$do;->if:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Lcom/google/common/cache/for;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/for$do;->do:Lcom/google/common/cache/for;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/for;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/for$do;->do:Lcom/google/common/cache/for;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/for;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/cache/for$do$do;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/cache/for$do$do;-><init>(Lcom/google/common/cache/for$do;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-static {v0}, Landroid/support/v4/kt0;->if(Ljava/util/concurrent/Callable;)Landroid/support/v4/kt0;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/google/common/cache/for$do;->if:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method
