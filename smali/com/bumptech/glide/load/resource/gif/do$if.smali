.class Lcom/bumptech/glide/load/resource/gif/do$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/gifdecoder/for;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/bumptech/glide/util/case;->case(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/do$if;->do:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized do(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/gifdecoder/for;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/do$if;->do:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/for;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/bumptech/glide/gifdecoder/for;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/for;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/for;->while(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/gifdecoder/for;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized if(Lcom/bumptech/glide/gifdecoder/for;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/gifdecoder/for;->do()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/do$if;->do:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
