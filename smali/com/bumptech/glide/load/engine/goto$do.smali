.class Lcom/bumptech/glide/load/engine/goto$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Lcom/bumptech/glide/request/ResourceCallback;

.field public final synthetic if:Lcom/bumptech/glide/load/engine/goto;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/goto;Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/goto$do;->if:Lcom/bumptech/glide/load/engine/goto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/goto$do;->do:Lcom/bumptech/glide/request/ResourceCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/goto$do;->do:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-interface {v0}, Lcom/bumptech/glide/request/ResourceCallback;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/goto$do;->if:Lcom/bumptech/glide/load/engine/goto;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/goto$do;->if:Lcom/bumptech/glide/load/engine/goto;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/goto;->do:Lcom/bumptech/glide/load/engine/goto$try;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/goto$do;->do:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/goto$try;->if(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/goto$do;->if:Lcom/bumptech/glide/load/engine/goto;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/goto$do;->do:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/goto;->if(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/goto$do;->if:Lcom/bumptech/glide/load/engine/goto;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/goto;->try()V

    .line 6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    .line 8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
