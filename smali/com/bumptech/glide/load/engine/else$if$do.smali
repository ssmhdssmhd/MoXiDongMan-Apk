.class Lcom/bumptech/glide/load/engine/else$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/else$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<",
        "Lcom/bumptech/glide/load/engine/goto<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/bumptech/glide/load/engine/else$if;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/else$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/else$if$do;->do:Lcom/bumptech/glide/load/engine/else$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/else$if$do;->do()Lcom/bumptech/glide/load/engine/goto;

    move-result-object v0

    return-object v0
.end method

.method public do()Lcom/bumptech/glide/load/engine/goto;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/goto<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/bumptech/glide/load/engine/goto;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/else$if$do;->do:Lcom/bumptech/glide/load/engine/else$if;

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/else$if;->do:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/else$if;->if:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/else$if;->for:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/else$if;->new:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v5, v0, Lcom/bumptech/glide/load/engine/else$if;->try:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v6, v0, Lcom/bumptech/glide/load/engine/else$if;->case:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    iget-object v7, v0, Lcom/bumptech/glide/load/engine/else$if;->else:Landroidx/core/util/Pools$Pool;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/goto;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;)V

    return-object v8
.end method
