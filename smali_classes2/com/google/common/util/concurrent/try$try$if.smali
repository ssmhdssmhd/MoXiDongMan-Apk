.class Lcom/google/common/util/concurrent/try$try$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/try$try;->try()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/util/concurrent/try$try;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/try$try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v0}, Lcom/google/common/util/concurrent/try$try;->while(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    iget-object v0, v0, Lcom/google/common/util/concurrent/try$try;->public:Lcom/google/common/util/concurrent/try;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/try;->goto()V

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    iget-object v1, v0, Lcom/google/common/util/concurrent/try$try;->public:Lcom/google/common/util/concurrent/try;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/try;->try()Lcom/google/common/util/concurrent/try$new;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    iget-object v2, v2, Lcom/google/common/util/concurrent/try$try;->public:Lcom/google/common/util/concurrent/try;

    invoke-static {v2}, Lcom/google/common/util/concurrent/try;->if(Lcom/google/common/util/concurrent/try;)Lcom/google/common/util/concurrent/case;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v3}, Lcom/google/common/util/concurrent/try$try;->public(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v4}, Lcom/google/common/util/concurrent/try$try;->return(Lcom/google/common/util/concurrent/try$try;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/util/concurrent/try$new;->for(Lcom/google/common/util/concurrent/case;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/try$try;->native(Lcom/google/common/util/concurrent/try$try;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->const()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/case;->class(Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v0}, Lcom/google/common/util/concurrent/try$try;->import(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v0}, Lcom/google/common/util/concurrent/try$try;->import(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v0}, Lcom/google/common/util/concurrent/try$try;->while(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/try$try$if;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v1}, Lcom/google/common/util/concurrent/try$try;->while(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    throw v0
.end method
