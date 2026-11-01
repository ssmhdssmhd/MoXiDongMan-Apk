.class Lcom/bumptech/glide/load/engine/goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$Callback;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/goto$for;,
        Lcom/bumptech/glide/load/engine/goto$new;,
        Lcom/bumptech/glide/load/engine/goto$try;,
        Lcom/bumptech/glide/load/engine/goto$if;,
        Lcom/bumptech/glide/load/engine/goto$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DecodeJob$Callback<",
        "TR;>;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final default:Lcom/bumptech/glide/load/engine/goto$for;


# instance fields
.field private final break:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final case:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field private final catch:Ljava/util/concurrent/atomic/AtomicInteger;

.field private class:Lcom/bumptech/glide/load/Key;

.field private const:Z

.field public final do:Lcom/bumptech/glide/load/engine/goto$try;

.field private final else:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final:Z

.field private final for:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

.field private final goto:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final if:Lcom/bumptech/glide/util/pool/do;

.field public import:Lcom/bumptech/glide/load/do;

.field private native:Z

.field private final new:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/goto<",
            "*>;>;"
        }
    .end annotation
.end field

.field public public:Lcom/bumptech/glide/load/engine/catch;

.field private return:Z

.field public static:Lcom/bumptech/glide/load/engine/EngineResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation
.end field

.field private super:Z

.field private switch:Lcom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final this:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private throw:Z

.field private volatile throws:Z

.field private final try:Lcom/bumptech/glide/load/engine/goto$for;

.field private while:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/goto$for;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/goto$for;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/goto;->default:Lcom/bumptech/glide/load/engine/goto$for;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/EngineJobListener;",
            "Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/goto<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    sget-object v8, Lcom/bumptech/glide/load/engine/goto;->default:Lcom/bumptech/glide/load/engine/goto$for;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/load/engine/goto;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/load/engine/goto$for;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/load/engine/goto$for;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/EngineJobListener;",
            "Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/goto<",
            "*>;>;",
            "Lcom/bumptech/glide/load/engine/goto$for;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/bumptech/glide/load/engine/goto$try;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/goto$try;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->do:Lcom/bumptech/glide/load/engine/goto$try;

    .line 4
    invoke-static {}, Lcom/bumptech/glide/util/pool/do;->do()Lcom/bumptech/glide/util/pool/do;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->if:Lcom/bumptech/glide/util/pool/do;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->catch:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/goto;->else:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/goto;->goto:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 8
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/goto;->this:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 9
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/goto;->break:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 10
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/goto;->case:Lcom/bumptech/glide/load/engine/EngineJobListener;

    .line 11
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/goto;->for:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    .line 12
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/goto;->new:Landroidx/core/util/Pools$Pool;

    .line 13
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/goto;->try:Lcom/bumptech/glide/load/engine/goto$for;

    return-void
.end method

.method private break()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->return:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->native:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->throws:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private case()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->final:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->this:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->super:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->break:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->goto:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    :goto_0
    return-object v0
.end method

.method private declared-synchronized final()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->class:Lcom/bumptech/glide/load/Key;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->do:Lcom/bumptech/glide/load/engine/goto$try;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/goto$try;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->class:Lcom/bumptech/glide/load/Key;

    .line 4
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->static:Lcom/bumptech/glide/load/engine/EngineResource;

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->while:Lcom/bumptech/glide/load/engine/Resource;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/goto;->return:Z

    .line 7
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/goto;->throws:Z

    .line 8
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/goto;->native:Z

    .line 9
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/goto;->switch:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->native(Z)V

    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->switch:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->public:Lcom/bumptech/glide/load/engine/catch;

    .line 12
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->import:Lcom/bumptech/glide/load/do;

    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->new:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public catch()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->if:Lcom/bumptech/glide/util/pool/do;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/do;->for()V

    .line 3
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->throws:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/goto;->final()V

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->do:Lcom/bumptech/glide/load/engine/goto$try;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/goto$try;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->return:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->return:Z

    .line 9
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/goto;->class:Lcom/bumptech/glide/load/Key;

    .line 10
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/goto;->do:Lcom/bumptech/glide/load/engine/goto$try;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/goto$try;->for()Lcom/bumptech/glide/load/engine/goto$try;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/goto$try;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/engine/goto;->else(I)V

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->case:Lcom/bumptech/glide/load/engine/EngineJobListener;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v3}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lcom/bumptech/glide/load/engine/goto;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 14
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/goto$try;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/goto$new;

    .line 15
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/goto$new;->if:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/bumptech/glide/load/engine/goto$do;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/goto$new;->do:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/engine/goto$do;-><init>(Lcom/bumptech/glide/load/engine/goto;Lcom/bumptech/glide/request/ResourceCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/goto;->try()V

    return-void

    .line 17
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public class()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->if:Lcom/bumptech/glide/util/pool/do;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/do;->for()V

    .line 3
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->throws:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->while:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/goto;->final()V

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->do:Lcom/bumptech/glide/load/engine/goto$try;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/goto$try;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->native:Z

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->try:Lcom/bumptech/glide/load/engine/goto$for;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/goto;->while:Lcom/bumptech/glide/load/engine/Resource;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/goto;->const:Z

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/goto;->class:Lcom/bumptech/glide/load/Key;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/goto;->for:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/goto$for;->do(Lcom/bumptech/glide/load/engine/Resource;ZLcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->static:Lcom/bumptech/glide/load/engine/EngineResource;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->native:Z

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/goto;->do:Lcom/bumptech/glide/load/engine/goto$try;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/goto$try;->for()Lcom/bumptech/glide/load/engine/goto$try;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/goto$try;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/engine/goto;->else(I)V

    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->class:Lcom/bumptech/glide/load/Key;

    .line 14
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/goto;->static:Lcom/bumptech/glide/load/engine/EngineResource;

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/goto;->case:Lcom/bumptech/glide/load/engine/EngineJobListener;

    invoke-interface {v3, p0, v0, v2}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lcom/bumptech/glide/load/engine/goto;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 17
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/goto$try;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/goto$new;

    .line 18
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/goto$new;->if:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/bumptech/glide/load/engine/goto$if;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/goto$new;->do:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/engine/goto$if;-><init>(Lcom/bumptech/glide/load/engine/goto;Lcom/bumptech/glide/request/ResourceCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/goto;->try()V

    return-void

    .line 20
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public const()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->throw:Z

    return v0
.end method

.method public declared-synchronized do(Lcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->if:Lcom/bumptech/glide/util/pool/do;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/do;->for()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->do:Lcom/bumptech/glide/load/engine/goto$try;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/goto$try;->do(Lcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V

    .line 3
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->native:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/goto;->else(I)V

    .line 5
    new-instance v0, Lcom/bumptech/glide/load/engine/goto$if;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/goto$if;-><init>(Lcom/bumptech/glide/load/engine/goto;Lcom/bumptech/glide/request/ResourceCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->return:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/goto;->else(I)V

    .line 8
    new-instance v0, Lcom/bumptech/glide/load/engine/goto$do;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/goto$do;-><init>(Lcom/bumptech/glide/load/engine/goto;Lcom/bumptech/glide/request/ResourceCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/goto;->throws:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {v1, p1}, Landroid/support/v4/cf1;->do(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized else(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/goto;->break()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Landroid/support/v4/cf1;->do(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->catch:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/goto;->static:Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/EngineResource;->do()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public for(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->static:Lcom/bumptech/glide/load/engine/EngineResource;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/goto;->import:Lcom/bumptech/glide/load/do;

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/do;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/do;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/do;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/do;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->if:Lcom/bumptech/glide/util/pool/do;

    return-object v0
.end method

.method public declared-synchronized goto(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/goto;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/goto<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/goto;->class:Lcom/bumptech/glide/load/Key;

    .line 2
    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/goto;->const:Z

    .line 3
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/goto;->final:Z

    .line 4
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/goto;->super:Z

    .line 5
    iput-boolean p5, p0, Lcom/bumptech/glide/load/engine/goto;->throw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public if(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->public:Lcom/bumptech/glide/load/engine/catch;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/ResourceCallback;->onLoadFailed(Lcom/bumptech/glide/load/engine/catch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/do;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/do;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public new()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/goto;->break()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->throws:Z

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->switch:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->do()V

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->case:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/goto;->class:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobCancelled(Lcom/bumptech/glide/load/engine/goto;Lcom/bumptech/glide/load/Key;)V

    return-void
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/catch;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/goto;->public:Lcom/bumptech/glide/load/engine/catch;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/goto;->catch()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;",
            "Lcom/bumptech/glide/load/do;",
            ")V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/goto;->while:Lcom/bumptech/glide/load/engine/Resource;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/goto;->import:Lcom/bumptech/glide/load/do;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/goto;->class()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/goto;->case()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized super(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->if:Lcom/bumptech/glide/util/pool/do;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/do;->for()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->do:Lcom/bumptech/glide/load/engine/goto$try;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/goto$try;->try(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 3
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/goto;->do:Lcom/bumptech/glide/load/engine/goto$try;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/goto$try;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/goto;->new()V

    .line 5
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/goto;->native:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/goto;->return:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/goto;->catch:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/goto;->final()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized this()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/goto;->throws:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized throw(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/goto;->switch:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->default()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->else:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/goto;->case()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public try()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->if:Lcom/bumptech/glide/util/pool/do;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/do;->for()V

    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/goto;->break()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Landroid/support/v4/cf1;->do(ZLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->catch:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 5
    invoke-static {v1, v2}, Landroid/support/v4/cf1;->do(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto;->static:Lcom/bumptech/glide/load/engine/EngineResource;

    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/goto;->final()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->new()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
