.class Lcom/bumptech/glide/load/engine/import;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;


# static fields
.field private static final goto:Ljava/lang/String; = "SourceGenerator"


# instance fields
.field private volatile case:Lcom/bumptech/glide/load/model/ModelLoader$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader$do<",
            "*>;"
        }
    .end annotation
.end field

.field private final do:Lcom/bumptech/glide/load/engine/try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/try<",
            "*>;"
        }
    .end annotation
.end field

.field private else:Lcom/bumptech/glide/load/engine/for;

.field private for:I

.field private final if:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

.field private new:Lcom/bumptech/glide/load/engine/if;

.field private try:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/try;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/try<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/import;->do:Lcom/bumptech/glide/load/engine/try;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/import;->if:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    return-void
.end method

.method private case(Lcom/bumptech/glide/load/model/ModelLoader$do;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$do<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$do;->for:Lcom/bumptech/glide/load/data/DataFetcher;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/import;->do:Lcom/bumptech/glide/load/engine/try;

    .line 2
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/try;->class()Lcom/bumptech/glide/try;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/import$do;

    invoke-direct {v2, p0, p1}, Lcom/bumptech/glide/load/engine/import$do;-><init>(Lcom/bumptech/glide/load/engine/import;Lcom/bumptech/glide/load/model/ModelLoader$do;)V

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/try;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    return-void
.end method

.method private do(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/support/v4/sv0;->if()J

    move-result-wide v0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/import;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/engine/try;->throw(Ljava/lang/Object;)Lcom/bumptech/glide/load/Encoder;

    move-result-object v2

    .line 3
    new-instance v3, Lcom/bumptech/glide/load/engine/new;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/import;->do:Lcom/bumptech/glide/load/engine/try;

    .line 4
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/try;->catch()Landroid/support/v4/f81;

    move-result-object v4

    invoke-direct {v3, v2, p1, v4}, Lcom/bumptech/glide/load/engine/new;-><init>(Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;Landroid/support/v4/f81;)V

    .line 5
    new-instance v4, Lcom/bumptech/glide/load/engine/for;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    iget-object v5, v5, Lcom/bumptech/glide/load/model/ModelLoader$do;->do:Lcom/bumptech/glide/load/Key;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/import;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/try;->super()Lcom/bumptech/glide/load/Key;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/engine/for;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    iput-object v4, p0, Lcom/bumptech/glide/load/engine/import;->else:Lcom/bumptech/glide/load/engine/for;

    .line 6
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/import;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/try;->new()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/import;->else:Lcom/bumptech/glide/load/engine/for;

    invoke-interface {v4, v5, v3}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    const-string v3, "SourceGenerator"

    const/4 v4, 0x2

    .line 7
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished encoding source to cache, key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/import;->else:Lcom/bumptech/glide/load/engine/for;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", encoder: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {v0, v1}, Landroid/support/v4/sv0;->do(J)D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    iget-object p1, p1, Lcom/bumptech/glide/load/model/ModelLoader$do;->for:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 11
    new-instance p1, Lcom/bumptech/glide/load/engine/if;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$do;->do:Lcom/bumptech/glide/load/Key;

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/import;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-direct {p1, v0, v1, p0}, Lcom/bumptech/glide/load/engine/if;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/try;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/import;->new:Lcom/bumptech/glide/load/engine/if;

    return-void

    :catchall_0
    move-exception p1

    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$do;->for:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    throw p1
.end method

.method private if()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/import;->for:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/import;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/try;->else()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$do;->for:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    :cond_0
    return-void
.end method

.method public for(Lcom/bumptech/glide/load/model/ModelLoader$do;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$do<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public new(Lcom/bumptech/glide/load/model/ModelLoader$do;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$do<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/try;->try()Lcom/bumptech/glide/load/engine/case;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    iget-object v1, p1, Lcom/bumptech/glide/load/model/ModelLoader$do;->for:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/do;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/case;->for(Lcom/bumptech/glide/load/do;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/import;->try:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/import;->if:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->reschedule()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->if:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v1, p1, Lcom/bumptech/glide/load/model/ModelLoader$do;->do:Lcom/bumptech/glide/load/Key;

    iget-object v3, p1, Lcom/bumptech/glide/load/model/ModelLoader$do;->for:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/do;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/import;->else:Lcom/bumptech/glide/load/engine/for;

    move-object v2, p2

    .line 7
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/do;Lcom/bumptech/glide/load/Key;)V

    :goto_0
    return-void
.end method

.method public onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/do;)V
    .locals 1
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
    iget-object p4, p0, Lcom/bumptech/glide/load/engine/import;->if:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$do;->for:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/do;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/do;)V

    return-void
.end method

.method public onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/do;Lcom/bumptech/glide/load/Key;)V
    .locals 6
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
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->if:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object p4, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    iget-object p4, p4, Lcom/bumptech/glide/load/model/ModelLoader$do;->for:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {p4}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/do;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/do;Lcom/bumptech/glide/load/Key;)V

    return-void
.end method

.method public reschedule()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startNext()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->try:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/import;->try:Ljava/lang/Object;

    .line 3
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/import;->do(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->new:Lcom/bumptech/glide/load/engine/if;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/if;->startNext()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 5
    :cond_1
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/import;->new:Lcom/bumptech/glide/load/engine/if;

    .line 6
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/import;->if()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/import;->do:Lcom/bumptech/glide/load/engine/try;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/try;->else()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/load/engine/import;->for:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bumptech/glide/load/engine/import;->for:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoader$do;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    .line 9
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/import;->do:Lcom/bumptech/glide/load/engine/try;

    .line 10
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/try;->try()Lcom/bumptech/glide/load/engine/case;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$do;->for:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/do;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/case;->for(Lcom/bumptech/glide/load/do;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/import;->do:Lcom/bumptech/glide/load/engine/try;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$do;->for:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 11
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/try;->public(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->case:Lcom/bumptech/glide/load/model/ModelLoader$do;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/import;->case(Lcom/bumptech/glide/load/model/ModelLoader$do;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public try(Lcom/bumptech/glide/load/model/ModelLoader$do;Ljava/lang/Exception;)V
    .locals 3
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$do<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import;->if:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/import;->else:Lcom/bumptech/glide/load/engine/for;

    iget-object p1, p1, Lcom/bumptech/glide/load/model/ModelLoader$do;->for:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/do;

    move-result-object v2

    invoke-interface {v0, v1, p2, p1, v2}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/do;)V

    return-void
.end method
