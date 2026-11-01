.class Lcom/google/common/util/concurrent/try$try$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/try$try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/util/concurrent/try$try;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/try$try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/try$try$new;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$new;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v0}, Lcom/google/common/util/concurrent/try$try;->while(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$new;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v0}, Lcom/google/common/util/concurrent/try$try;->import(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$new;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v0}, Lcom/google/common/util/concurrent/try$try;->while(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$new;->do:Lcom/google/common/util/concurrent/try$try;

    iget-object v0, v0, Lcom/google/common/util/concurrent/try$try;->public:Lcom/google/common/util/concurrent/try;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/try;->new()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$new;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v0}, Lcom/google/common/util/concurrent/try$try;->while(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 6
    :try_start_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/try$try$new;->do:Lcom/google/common/util/concurrent/try$try;

    iget-object v1, v1, Lcom/google/common/util/concurrent/try$try;->public:Lcom/google/common/util/concurrent/try;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/try;->else()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 7
    :try_start_3
    invoke-static {}, Lcom/google/common/util/concurrent/try;->do()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/try$try$new;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/case;->class(Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$new;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v0}, Lcom/google/common/util/concurrent/try$try;->import(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_2
    return-void

    .line 10
    :goto_3
    iget-object v1, p0, Lcom/google/common/util/concurrent/try$try$new;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v1}, Lcom/google/common/util/concurrent/try$try;->while(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
