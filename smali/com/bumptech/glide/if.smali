.class public final Lcom/bumptech/glide/if;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private break:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

.field private case:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private catch:I

.field private class:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

.field private const:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/this<",
            "**>;>;"
        }
    .end annotation
.end field

.field private else:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private for:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private goto:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

.field private if:Lcom/bumptech/glide/load/engine/else;

.field private import:Z

.field private new:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private super:Z

.field private this:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

.field private throw:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private try:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private while:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/if;->do:Ljava/util/Map;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/bumptech/glide/if;->catch:I

    .line 4
    new-instance v0, Lcom/bumptech/glide/if$do;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/if$do;-><init>(Lcom/bumptech/glide/if;)V

    iput-object v0, p0, Lcom/bumptech/glide/if;->class:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    return-void
.end method


# virtual methods
.method public break(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/if;->goto:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    return-object p0
.end method

.method public case(Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)Lcom/bumptech/glide/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/if;->break:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    return-object p0
.end method

.method public catch(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)Lcom/bumptech/glide/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/if;->else:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    return-object p0
.end method

.method public class(Lcom/bumptech/glide/load/engine/else;)Lcom/bumptech/glide/if;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/if;->if:Lcom/bumptech/glide/load/engine/else;

    return-object p0
.end method

.method public const(Z)Lcom/bumptech/glide/if;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastQ()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/if;->import:Z

    return-object p0
.end method

.method public do(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/if;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bumptech/glide/if;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/if;->throw:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/if;->throw:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/if;->throw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public else(Landroid/support/v4/dn1;)Lcom/bumptech/glide/if;
    .locals 1
    .param p1    # Landroid/support/v4/dn1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/if$if;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/if$if;-><init>(Lcom/bumptech/glide/if;Landroid/support/v4/dn1;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/if;->goto(Lcom/bumptech/glide/Glide$RequestOptionsFactory;)Lcom/bumptech/glide/if;

    move-result-object p1

    return-object p1
.end method

.method public final(Z)Lcom/bumptech/glide/if;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/bumptech/glide/if;->super:Z

    return-object p0
.end method

.method public for(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)Lcom/bumptech/glide/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/if;->final:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    return-object p0
.end method

.method public goto(Lcom/bumptech/glide/Glide$RequestOptionsFactory;)Lcom/bumptech/glide/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Glide$RequestOptionsFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    iput-object p1, p0, Lcom/bumptech/glide/if;->class:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    return-object p0
.end method

.method public if(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v1, v0, Lcom/bumptech/glide/if;->case:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->break()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/if;->case:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/if;->else:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->case()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/if;->else:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/if;->final:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    if-nez v1, :cond_2

    .line 6
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->for()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/if;->final:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 7
    :cond_2
    iget-object v1, v0, Lcom/bumptech/glide/if;->this:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    if-nez v1, :cond_3

    .line 8
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$do;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$do;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$do;->do()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/if;->this:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 9
    :cond_3
    iget-object v1, v0, Lcom/bumptech/glide/if;->break:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    if-nez v1, :cond_4

    .line 10
    new-instance v1, Lcom/bumptech/glide/manager/new;

    invoke-direct {v1}, Lcom/bumptech/glide/manager/new;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/if;->break:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 11
    :cond_4
    iget-object v1, v0, Lcom/bumptech/glide/if;->for:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    if-nez v1, :cond_6

    .line 12
    iget-object v1, v0, Lcom/bumptech/glide/if;->this:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->if()I

    move-result v1

    if-lez v1, :cond_5

    .line 13
    new-instance v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    iput-object v3, v0, Lcom/bumptech/glide/if;->for:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    goto :goto_0

    .line 14
    :cond_5
    new-instance v1, Landroid/support/v4/m9;

    invoke-direct {v1}, Landroid/support/v4/m9;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/if;->for:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 15
    :cond_6
    :goto_0
    iget-object v1, v0, Lcom/bumptech/glide/if;->new:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    if-nez v1, :cond_7

    .line 16
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/case;

    iget-object v3, v0, Lcom/bumptech/glide/if;->this:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->do()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/case;-><init>(I)V

    iput-object v1, v0, Lcom/bumptech/glide/if;->new:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 17
    :cond_7
    iget-object v1, v0, Lcom/bumptech/glide/if;->try:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    if-nez v1, :cond_8

    .line 18
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/else;

    iget-object v3, v0, Lcom/bumptech/glide/if;->this:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->new()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lcom/bumptech/glide/load/engine/cache/else;-><init>(J)V

    iput-object v1, v0, Lcom/bumptech/glide/if;->try:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 19
    :cond_8
    iget-object v1, v0, Lcom/bumptech/glide/if;->goto:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    if-nez v1, :cond_9

    .line 20
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/case;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/cache/case;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/bumptech/glide/if;->goto:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 21
    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/if;->if:Lcom/bumptech/glide/load/engine/else;

    if-nez v1, :cond_a

    .line 22
    new-instance v1, Lcom/bumptech/glide/load/engine/else;

    iget-object v4, v0, Lcom/bumptech/glide/if;->try:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v5, v0, Lcom/bumptech/glide/if;->goto:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    iget-object v6, v0, Lcom/bumptech/glide/if;->else:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-object v7, v0, Lcom/bumptech/glide/if;->case:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 23
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->const()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v8

    iget-object v9, v0, Lcom/bumptech/glide/if;->final:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iget-boolean v10, v0, Lcom/bumptech/glide/if;->super:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/bumptech/glide/load/engine/else;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Z)V

    iput-object v1, v0, Lcom/bumptech/glide/if;->if:Lcom/bumptech/glide/load/engine/else;

    .line 24
    :cond_a
    iget-object v1, v0, Lcom/bumptech/glide/if;->throw:Ljava/util/List;

    if-nez v1, :cond_b

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/if;->throw:Ljava/util/List;

    goto :goto_1

    .line 26
    :cond_b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/if;->throw:Ljava/util/List;

    .line 27
    :goto_1
    new-instance v7, Lcom/bumptech/glide/manager/RequestManagerRetriever;

    iget-object v1, v0, Lcom/bumptech/glide/if;->const:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    invoke-direct {v7, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;-><init>(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V

    .line 28
    new-instance v15, Lcom/bumptech/glide/Glide;

    iget-object v3, v0, Lcom/bumptech/glide/if;->if:Lcom/bumptech/glide/load/engine/else;

    iget-object v4, v0, Lcom/bumptech/glide/if;->try:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v5, v0, Lcom/bumptech/glide/if;->for:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v6, v0, Lcom/bumptech/glide/if;->new:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iget-object v8, v0, Lcom/bumptech/glide/if;->break:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    iget v9, v0, Lcom/bumptech/glide/if;->catch:I

    iget-object v10, v0, Lcom/bumptech/glide/if;->class:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    iget-object v11, v0, Lcom/bumptech/glide/if;->do:Ljava/util/Map;

    iget-object v12, v0, Lcom/bumptech/glide/if;->throw:Ljava/util/List;

    iget-boolean v13, v0, Lcom/bumptech/glide/if;->while:Z

    iget-boolean v14, v0, Lcom/bumptech/glide/if;->import:Z

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Lcom/bumptech/glide/Glide;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/else;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/manager/RequestManagerRetriever;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;ILcom/bumptech/glide/Glide$RequestOptionsFactory;Ljava/util/Map;Ljava/util/List;ZZ)V

    return-object v15
.end method

.method public import(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$do;)Lcom/bumptech/glide/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$do;->do()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/if;->native(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;)Lcom/bumptech/glide/if;

    move-result-object p1

    return-object p1
.end method

.method public native(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;)Lcom/bumptech/glide/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/if;->this:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    return-object p0
.end method

.method public new(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/if;->new:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object p0
.end method

.method public public(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/if;->const:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    return-void
.end method

.method public return(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)Lcom/bumptech/glide/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/if;->static(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)Lcom/bumptech/glide/if;

    move-result-object p1

    return-object p1
.end method

.method public static(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)Lcom/bumptech/glide/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/if;->case:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    return-object p0
.end method

.method public super(I)Lcom/bumptech/glide/if;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/bumptech/glide/if;->catch:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public this(Ljava/lang/Class;Lcom/bumptech/glide/this;)Lcom/bumptech/glide/if;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/this;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/this<",
            "*TT;>;)",
            "Lcom/bumptech/glide/if;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/if;->do:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public throw(Z)Lcom/bumptech/glide/if;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bumptech/glide/if;->while:Z

    return-object p0
.end method

.method public try(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/if;->for:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-object p0
.end method

.method public while(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/cache/MemoryCache;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/if;->try:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    return-object p0
.end method
