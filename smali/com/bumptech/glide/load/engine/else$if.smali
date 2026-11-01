.class Lcom/bumptech/glide/load/engine/else$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public final case:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

.field public final do:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field public final else:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/goto<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final for:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field public final if:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field public final new:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field public final try:Lcom/bumptech/glide/load/engine/EngineJobListener;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/else$if$do;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/else$if$do;-><init>(Lcom/bumptech/glide/load/engine/else$if;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->try(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/else$if;->else:Landroidx/core/util/Pools$Pool;

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/else$if;->do:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 5
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/else$if;->if:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 6
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/else$if;->for:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 7
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/else$if;->new:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 8
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/else$if;->try:Lcom/bumptech/glide/load/engine/EngineJobListener;

    .line 9
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/else$if;->case:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    return-void
.end method


# virtual methods
.method public do(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/goto;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/goto<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/else$if;->else:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/goto;

    invoke-static {v0}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bumptech/glide/load/engine/goto;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/goto;->goto(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/goto;

    move-result-object p1

    return-object p1
.end method

.method public if()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/else$if;->do:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/util/new;->for(Ljava/util/concurrent/ExecutorService;)V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/else$if;->if:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/util/new;->for(Ljava/util/concurrent/ExecutorService;)V

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/else$if;->for:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/util/new;->for(Ljava/util/concurrent/ExecutorService;)V

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/else$if;->new:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/bumptech/glide/util/new;->for(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
