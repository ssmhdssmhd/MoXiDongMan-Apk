.class public Lcom/bumptech/glide/load/engine/cache/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache;


# static fields
.field private static final case:Ljava/lang/String; = "DiskLruCacheWrapper"

.field private static final else:I = 0x1

.field private static final goto:I = 0x1

.field private static this:Lcom/bumptech/glide/load/engine/cache/for;


# instance fields
.field private final do:Lcom/bumptech/glide/load/engine/cache/this;

.field private final for:J

.field private final if:Ljava/io/File;

.field private final new:Lcom/bumptech/glide/load/engine/cache/if;

.field private try:Lcom/bumptech/glide/disklrucache/do;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/if;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/if;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/for;->new:Lcom/bumptech/glide/load/engine/cache/if;

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/for;->if:Ljava/io/File;

    .line 4
    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/cache/for;->for:J

    .line 5
    new-instance p1, Lcom/bumptech/glide/load/engine/cache/this;

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/cache/this;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/for;->do:Lcom/bumptech/glide/load/engine/cache/this;

    return-void
.end method

.method public static do(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/for;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/for;-><init>(Ljava/io/File;J)V

    return-object v0
.end method

.method private declared-synchronized for()Lcom/bumptech/glide/disklrucache/do;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/for;->try:Lcom/bumptech/glide/disklrucache/do;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/for;->if:Ljava/io/File;

    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/cache/for;->for:J

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lcom/bumptech/glide/disklrucache/do;->throws(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/do;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/for;->try:Lcom/bumptech/glide/disklrucache/do;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/for;->try:Lcom/bumptech/glide/disklrucache/do;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized if(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/engine/cache/for;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/engine/cache/for;->this:Lcom/bumptech/glide/load/engine/cache/for;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/for;

    invoke-direct {v1, p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/for;-><init>(Ljava/io/File;J)V

    sput-object v1, Lcom/bumptech/glide/load/engine/cache/for;->this:Lcom/bumptech/glide/load/engine/cache/for;

    .line 3
    :cond_0
    sget-object p0, Lcom/bumptech/glide/load/engine/cache/for;->this:Lcom/bumptech/glide/load/engine/cache/for;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized new()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/for;->try:Lcom/bumptech/glide/disklrucache/do;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/for;->for()Lcom/bumptech/glide/disklrucache/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/do;->final()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/for;->new()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v0, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4
    :goto_1
    monitor-exit p0

    return-void

    .line 5
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/for;->new()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public delete(Lcom/bumptech/glide/load/Key;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/for;->do:Lcom/bumptech/glide/load/engine/cache/this;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/this;->if(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/for;->for()Lcom/bumptech/glide/disklrucache/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/disklrucache/do;->private(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x5

    const-string v0, "DiskLruCacheWrapper"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method public get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/for;->do:Lcom/bumptech/glide/load/engine/cache/this;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/this;->if(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/for;->for()Lcom/bumptech/glide/disklrucache/do;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/disklrucache/do;->native(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/do$try;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/disklrucache/do$try;->if(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x5

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-object p1
.end method

.method public put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    .locals 4

    const-string v0, "DiskLruCacheWrapper"

    .line 1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/for;->do:Lcom/bumptech/glide/load/engine/cache/this;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/engine/cache/this;->if(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/for;->new:Lcom/bumptech/glide/load/engine/cache/if;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/cache/if;->do(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 3
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/for;->for()Lcom/bumptech/glide/disklrucache/do;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/disklrucache/do;->native(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/do$try;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/for;->new:Lcom/bumptech/glide/load/engine/cache/if;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/cache/if;->if(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    :try_start_2
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/disklrucache/do;->throw(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/do$for;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    .line 9
    :try_start_3
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/disklrucache/do$for;->case(I)Ljava/io/File;

    move-result-object v2

    .line 10
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;->write(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/do$for;->try()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/do$for;->if()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/do$for;->if()V

    throw p2

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Had two simultaneous puts for: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    const/4 p1, 0x5

    .line 14
    :try_start_5
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/for;->new:Lcom/bumptech/glide/load/engine/cache/if;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/cache/if;->if(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/cache/for;->new:Lcom/bumptech/glide/load/engine/cache/if;

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/load/engine/cache/if;->if(Ljava/lang/String;)V

    throw p1
.end method
