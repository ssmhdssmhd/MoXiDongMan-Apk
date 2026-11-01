.class Lcom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DecodeJob$case;,
        Lcom/bumptech/glide/load/engine/DecodeJob$try;,
        Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/DecodeJob$Callback;,
        Lcom/bumptech/glide/load/engine/DecodeJob$for;,
        Lcom/bumptech/glide/load/engine/DecodeJob$new;,
        Lcom/bumptech/glide/load/engine/DecodeJob$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/bumptech/glide/load/engine/DecodeJob<",
        "*>;>;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final strictfp:Ljava/lang/String; = "DecodeJob"


# instance fields
.field private volatile abstract:Z

.field private break:Lcom/bumptech/glide/try;

.field private final case:Lcom/bumptech/glide/load/engine/DecodeJob$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$for<",
            "*>;"
        }
    .end annotation
.end field

.field private catch:Lcom/bumptech/glide/load/engine/this;

.field private class:I

.field private const:I

.field private volatile continue:Z

.field private default:Lcom/bumptech/glide/load/Key;

.field private final do:Lcom/bumptech/glide/load/engine/try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/try<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final else:Lcom/bumptech/glide/load/engine/DecodeJob$new;

.field private extends:Ljava/lang/Object;

.field private final:Lcom/bumptech/glide/load/engine/case;

.field private finally:Lcom/bumptech/glide/load/do;

.field private final for:Lcom/bumptech/glide/util/pool/do;

.field private goto:Lcom/bumptech/glide/for;

.field private final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private import:Lcom/bumptech/glide/load/engine/DecodeJob$case;

.field private native:Lcom/bumptech/glide/load/engine/DecodeJob$try;

.field private final new:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private package:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile private:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

.field private public:J

.field private return:Z

.field private static:Ljava/lang/Object;

.field private super:Landroid/support/v4/f81;

.field private switch:Ljava/lang/Thread;

.field private this:Lcom/bumptech/glide/load/Key;

.field private throw:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$Callback<",
            "TR;>;"
        }
    .end annotation
.end field

.field private throws:Lcom/bumptech/glide/load/Key;

.field private final try:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field private while:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/try;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/try;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->if:Ljava/util/List;

    .line 4
    invoke-static {}, Lcom/bumptech/glide/util/pool/do;->do()Lcom/bumptech/glide/util/pool/do;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->for:Lcom/bumptech/glide/util/pool/do;

    .line 5
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$for;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$for;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->case:Lcom/bumptech/glide/load/engine/DecodeJob$for;

    .line 6
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$new;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$new;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->else:Lcom/bumptech/glide/load/engine/DecodeJob$new;

    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->new:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 8
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->try:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private case()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
    .locals 3

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$do;->if:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->import:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->import:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/import;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/import;-><init>(Lcom/bumptech/glide/load/engine/try;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0

    .line 4
    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/engine/if;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/if;-><init>(Lcom/bumptech/glide/load/engine/try;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0

    .line 5
    :cond_3
    new-instance v0, Lcom/bumptech/glide/load/engine/super;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/super;-><init>(Lcom/bumptech/glide/load/engine/try;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0
.end method

.method private catch(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->class(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private class(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p2, p3}, Landroid/support/v4/sv0;->do(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->catch:Lcom/bumptech/glide/load/engine/this;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private const(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/do;)V
    .locals 1
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
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->throws()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throw:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/do;)V

    return-void
.end method

.method private else(Lcom/bumptech/glide/load/engine/DecodeJob$case;)Lcom/bumptech/glide/load/engine/DecodeJob$case;
    .locals 3

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$do;->if:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->final:Lcom/bumptech/glide/load/engine/case;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/case;->if()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$case;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$case;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->else(Lcom/bumptech/glide/load/engine/DecodeJob$case;)Lcom/bumptech/glide/load/engine/DecodeJob$case;

    move-result-object p1

    :goto_0
    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$case;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    return-object p1

    .line 7
    :cond_3
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->return:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$case;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$case;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    :goto_1
    return-object p1

    .line 8
    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->final:Lcom/bumptech/glide/load/engine/case;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/case;->do()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$case;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    goto :goto_2

    .line 10
    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$case;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->else(Lcom/bumptech/glide/load/engine/DecodeJob$case;)Lcom/bumptech/glide/load/engine/DecodeJob$case;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private final(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/do;)V
    .locals 2
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
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/Initializable;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/engine/Initializable;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Initializable;->initialize()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->case:Lcom/bumptech/glide/load/engine/DecodeJob$for;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$for;->for()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/final;->if(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/final;

    move-result-object p1

    move-object v0, p1

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/DecodeJob;->const(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/do;)V

    .line 6
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$case;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->import:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->case:Lcom/bumptech/glide/load/engine/DecodeJob$for;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$for;->for()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->case:Lcom/bumptech/glide/load/engine/DecodeJob$for;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->new:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->super:Landroid/support/v4/f81;

    invoke-virtual {p1, p2, v1}, Lcom/bumptech/glide/load/engine/DecodeJob$for;->if(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Landroid/support/v4/f81;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/final;->new()V

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->throw()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/final;->new()V

    :cond_4
    throw p1
.end method

.method private for(Lcom/bumptech/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/bumptech/glide/load/do;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/do;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/catch;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    return-object p2

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/support/v4/sv0;->if()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/engine/DecodeJob;->new(Ljava/lang/Object;Lcom/bumptech/glide/load/do;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v2, 0x2

    .line 4
    invoke-static {p3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded result "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->catch(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    throw p2
.end method

.method private goto(Lcom/bumptech/glide/load/do;)Landroid/support/v4/f81;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->super:Landroid/support/v4/f81;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v1, Lcom/bumptech/glide/load/do;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/do;

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    .line 4
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/try;->switch()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 5
    :goto_1
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->catch:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v1}, Landroid/support/v4/f81;->do(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    return-object v0

    .line 7
    :cond_4
    new-instance v0, Landroid/support/v4/f81;

    invoke-direct {v0}, Landroid/support/v4/f81;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->super:Landroid/support/v4/f81;

    invoke-virtual {v0, v2}, Landroid/support/v4/f81;->if(Landroid/support/v4/f81;)V

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/f81;->for(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Landroid/support/v4/f81;

    return-object v0
.end method

.method private new(Ljava/lang/Object;Lcom/bumptech/glide/load/do;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/do;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/catch;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/try;->goto(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/const;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->static(Ljava/lang/Object;Lcom/bumptech/glide/load/do;Lcom/bumptech/glide/load/engine/const;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method private public()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->else:Lcom/bumptech/glide/load/engine/DecodeJob$new;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$new;->try()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->case:Lcom/bumptech/glide/load/engine/DecodeJob$for;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$for;->do()V

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/try;->do()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->abstract:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->goto:Lcom/bumptech/glide/for;

    .line 6
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->this:Lcom/bumptech/glide/load/Key;

    .line 7
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->super:Landroid/support/v4/f81;

    .line 8
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->break:Lcom/bumptech/glide/try;

    .line 9
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->catch:Lcom/bumptech/glide/load/engine/this;

    .line 10
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throw:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    .line 11
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->import:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    .line 12
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->private:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 13
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->switch:Ljava/lang/Thread;

    .line 14
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throws:Lcom/bumptech/glide/load/Key;

    .line 15
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->extends:Ljava/lang/Object;

    .line 16
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->finally:Lcom/bumptech/glide/load/do;

    .line 17
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->package:Lcom/bumptech/glide/load/data/DataFetcher;

    const-wide/16 v2, 0x0

    .line 18
    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->public:J

    .line 19
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->continue:Z

    .line 20
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->static:Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->try:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private return()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->switch:Ljava/lang/Thread;

    .line 2
    invoke-static {}, Landroid/support/v4/sv0;->if()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->public:J

    const/4 v0, 0x0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->continue:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->private:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->private:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 4
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator;->startNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->import:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->else(Lcom/bumptech/glide/load/engine/DecodeJob$case;)Lcom/bumptech/glide/load/engine/DecodeJob$case;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->import:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->case()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->private:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->import:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$case;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    if-ne v1, v2, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->reschedule()V

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->import:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$case;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->continue:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->super()V

    :cond_3
    return-void
.end method

.method private static(Ljava/lang/Object;Lcom/bumptech/glide/load/do;Lcom/bumptech/glide/load/engine/const;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/do;",
            "Lcom/bumptech/glide/load/engine/const<",
            "TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/catch;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob;->goto(Lcom/bumptech/glide/load/do;)Landroid/support/v4/f81;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->goto:Lcom/bumptech/glide/for;

    invoke-virtual {v0}, Lcom/bumptech/glide/for;->goto()Lcom/bumptech/glide/case;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/case;->class(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;

    move-result-object p1

    .line 3
    :try_start_0
    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->class:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->const:I

    new-instance v5, Lcom/bumptech/glide/load/engine/DecodeJob$if;

    invoke-direct {v5, p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$if;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/do;)V

    move-object v0, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/const;->if(Lcom/bumptech/glide/load/data/DataRewinder;Landroid/support/v4/f81;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataRewinder;->cleanup()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataRewinder;->cleanup()V

    throw p2
.end method

.method private super()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->throws()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/catch;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->if:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/catch;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throw:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->onLoadFailed(Lcom/bumptech/glide/load/engine/catch;)V

    .line 4
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->while()V

    return-void
.end method

.method private switch()V
    .locals 3

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$do;->do:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->native:Lcom/bumptech/glide/load/engine/DecodeJob$try;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->try()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->native:Lcom/bumptech/glide/load/engine/DecodeJob$try;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->return()V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$case;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->else(Lcom/bumptech/glide/load/engine/DecodeJob$case;)Lcom/bumptech/glide/load/engine/DecodeJob$case;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->import:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->case()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->private:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->return()V

    :goto_0
    return-void
.end method

.method private this()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->break:Lcom/bumptech/glide/try;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method private throw()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->else:Lcom/bumptech/glide/load/engine/DecodeJob$new;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$new;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->public()V

    :cond_0
    return-void
.end method

.method private throws()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->for:Lcom/bumptech/glide/util/pool/do;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/do;->for()V

    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->abstract:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->abstract:Z

    return-void
.end method

.method private try()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->public:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->extends:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throws:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->package:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->class(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->package:Lcom/bumptech/glide/load/data/DataFetcher;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->extends:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->finally:Lcom/bumptech/glide/load/do;

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->for(Lcom/bumptech/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/bumptech/glide/load/do;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/catch; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->default:Lcom/bumptech/glide/load/Key;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->finally:Lcom/bumptech/glide/load/do;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/engine/catch;->setLoggingDetails(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/do;)V

    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->if:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->finally:Lcom/bumptech/glide/load/do;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->final(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/do;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->return()V

    :goto_1
    return-void
.end method

.method private while()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->else:Lcom/bumptech/glide/load/engine/DecodeJob$new;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$new;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->public()V

    :cond_0
    return-void
.end method


# virtual methods
.method public break(Lcom/bumptech/glide/for;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/this;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/try;Lcom/bumptech/glide/load/engine/case;Ljava/util/Map;ZZZLandroid/support/v4/f81;Lcom/bumptech/glide/load/engine/DecodeJob$Callback;I)Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/for;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/engine/this;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/try;",
            "Lcom/bumptech/glide/load/engine/case;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;ZZZ",
            "Landroid/support/v4/f81;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$Callback<",
            "TR;>;I)",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    iget-object v15, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->new:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lcom/bumptech/glide/load/engine/try;->return(Lcom/bumptech/glide/for;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/engine/case;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/try;Landroid/support/v4/f81;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;)V

    move-object/from16 v1, p1

    .line 2
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->goto:Lcom/bumptech/glide/for;

    move-object/from16 v1, p4

    .line 3
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->this:Lcom/bumptech/glide/load/Key;

    move-object/from16 v1, p9

    .line 4
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->break:Lcom/bumptech/glide/try;

    move-object/from16 v1, p3

    .line 5
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->catch:Lcom/bumptech/glide/load/engine/this;

    move/from16 v1, p5

    .line 6
    iput v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->class:I

    move/from16 v1, p6

    .line 7
    iput v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->const:I

    move-object/from16 v1, p10

    .line 8
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->final:Lcom/bumptech/glide/load/engine/case;

    move/from16 v1, p14

    .line 9
    iput-boolean v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->return:Z

    move-object/from16 v1, p15

    .line 10
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->super:Landroid/support/v4/f81;

    move-object/from16 v1, p16

    .line 11
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->throw:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    move/from16 v1, p17

    .line 12
    iput v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->while:I

    .line 13
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$try;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$try;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->native:Lcom/bumptech/glide/load/engine/DecodeJob$try;

    move-object/from16 v1, p2

    .line 14
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->static:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->if(Lcom/bumptech/glide/load/engine/DecodeJob;)I

    move-result p1

    return p1
.end method

.method public default()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$case;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->else(Lcom/bumptech/glide/load/engine/DecodeJob$case;)Lcom/bumptech/glide/load/engine/DecodeJob$case;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$case;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$case;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    if-ne v0, v1, :cond_0

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

.method public do()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->continue:Z

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->private:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator;->cancel()V

    :cond_0
    return-void
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/do;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->for:Lcom/bumptech/glide/util/pool/do;

    return-object v0
.end method

.method public if(Lcom/bumptech/glide/load/engine/DecodeJob;)I
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/DecodeJob;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->this()I

    move-result v0

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->this()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->while:I

    iget p1, p1, Lcom/bumptech/glide/load/engine/DecodeJob;->while:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public import(Lcom/bumptech/glide/load/do;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 11
    .param p2    # Lcom/bumptech/glide/load/engine/Resource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/do;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 2
    sget-object v0, Lcom/bumptech/glide/load/do;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/do;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/load/engine/try;->import(Ljava/lang/Class;)Lcom/bumptech/glide/load/Transformation;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->goto:Lcom/bumptech/glide/for;

    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->class:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->const:I

    invoke-interface {v0, v2, p2, v3, v4}, Lcom/bumptech/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p2

    move-object v7, v1

    .line 5
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/try;->static(Lcom/bumptech/glide/load/engine/Resource;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/try;->final(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v1

    .line 9
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->super:Landroid/support/v4/f81;

    invoke-interface {v1, p2}, Lcom/bumptech/glide/load/ResourceEncoder;->getEncodeStrategy(Landroid/support/v4/f81;)Lcom/bumptech/glide/load/for;

    move-result-object p2

    goto :goto_1

    .line 10
    :cond_2
    sget-object p2, Lcom/bumptech/glide/load/for;->NONE:Lcom/bumptech/glide/load/for;

    :goto_1
    move-object v10, v1

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throws:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/try;->throws(Lcom/bumptech/glide/load/Key;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 12
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->final:Lcom/bumptech/glide/load/engine/case;

    invoke-virtual {v3, v1, p1, p2}, Lcom/bumptech/glide/load/engine/case;->new(ZLcom/bumptech/glide/load/do;Lcom/bumptech/glide/load/for;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v10, :cond_5

    .line 13
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$do;->for:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 14
    new-instance p1, Lcom/bumptech/glide/load/engine/throw;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->do:Lcom/bumptech/glide/load/engine/try;

    .line 15
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/try;->if()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throws:Lcom/bumptech/glide/load/Key;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->this:Lcom/bumptech/glide/load/Key;

    iget v5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->class:I

    iget v6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->const:I

    iget-object v9, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->super:Landroid/support/v4/f81;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/load/engine/throw;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/Transformation;Ljava/lang/Class;Landroid/support/v4/f81;)V

    goto :goto_2

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    new-instance p1, Lcom/bumptech/glide/load/engine/for;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throws:Lcom/bumptech/glide/load/Key;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->this:Lcom/bumptech/glide/load/Key;

    invoke-direct {p1, p2, v1}, Lcom/bumptech/glide/load/engine/for;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    .line 18
    :goto_2
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/final;->if(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/final;

    move-result-object v0

    .line 19
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->case:Lcom/bumptech/glide/load/engine/DecodeJob$for;

    invoke-virtual {p2, p1, v10, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$for;->new(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/engine/final;)V

    goto :goto_3

    .line 20
    :cond_5
    new-instance p1, Lcom/bumptech/glide/case$new;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/case$new;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method public native(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->else:Lcom/bumptech/glide/load/engine/DecodeJob$new;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$new;->new(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->public()V

    :cond_0
    return-void
.end method

.method public onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/do;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/do;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/catch;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/catch;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lcom/bumptech/glide/load/engine/catch;->setLoggingDetails(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/do;Ljava/lang/Class;)V

    .line 4
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->if:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->switch:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 6
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$try;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$try;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->native:Lcom/bumptech/glide/load/engine/DecodeJob$try;

    .line 7
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throw:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->return()V

    :goto_0
    return-void
.end method

.method public onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/do;Lcom/bumptech/glide/load/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/do;",
            "Lcom/bumptech/glide/load/Key;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throws:Lcom/bumptech/glide/load/Key;

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->extends:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->package:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 4
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->finally:Lcom/bumptech/glide/load/do;

    .line 5
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->default:Lcom/bumptech/glide/load/Key;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->switch:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 7
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$try;->DECODE_DATA:Lcom/bumptech/glide/load/engine/DecodeJob$try;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->native:Lcom/bumptech/glide/load/engine/DecodeJob$try;

    .line 8
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throw:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    goto :goto_0

    :cond_0
    const-string p1, "DecodeJob.decodeFromRetrievedData"

    .line 9
    invoke-static {p1}, Landroid/support/v4/qh0;->do(Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->try()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {}, Landroid/support/v4/qh0;->try()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/support/v4/qh0;->try()V

    throw p1
.end method

.method public reschedule()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$try;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$try;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->native:Lcom/bumptech/glide/load/engine/DecodeJob$try;

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->throw:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->static:Ljava/lang/Object;

    const-string v1, "DecodeJob#run(model=%s)"

    invoke-static {v1, v0}, Landroid/support/v4/qh0;->if(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->package:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->continue:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->super()V
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/do; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 6
    :cond_0
    invoke-static {}, Landroid/support/v4/qh0;->try()V

    return-void

    .line 7
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->switch()V
    :try_end_1
    .catch Lcom/bumptech/glide/load/engine/do; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 9
    :cond_2
    invoke-static {}, Landroid/support/v4/qh0;->try()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "DecodeJob"

    const/4 v3, 0x3

    .line 10
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->continue:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", stage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->import:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->import:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$case;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$case;

    if-eq v2, v3, :cond_4

    .line 13
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->if:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->super()V

    .line 15
    :cond_4
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->continue:Z

    if-nez v2, :cond_5

    .line 16
    throw v1

    .line 17
    :cond_5
    throw v1

    :catch_0
    move-exception v1

    .line 18
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 19
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 20
    :cond_6
    invoke-static {}, Landroid/support/v4/qh0;->try()V

    throw v1
.end method
