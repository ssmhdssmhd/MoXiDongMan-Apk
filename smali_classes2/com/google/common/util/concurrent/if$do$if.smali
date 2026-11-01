.class Lcom/google/common/util/concurrent/if$do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/if$do;->try()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/util/concurrent/if$do;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/if$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/if$do$if;->do:Lcom/google/common/util/concurrent/if$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/if$do$if;->do:Lcom/google/common/util/concurrent/if$do;

    iget-object v0, v0, Lcom/google/common/util/concurrent/if$do;->throw:Lcom/google/common/util/concurrent/if;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/if;->case()V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/if$do$if;->do:Lcom/google/common/util/concurrent/if$do;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->const()V

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/if$do$if;->do:Lcom/google/common/util/concurrent/if$do;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->isRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/if$do$if;->do:Lcom/google/common/util/concurrent/if$do;

    iget-object v0, v0, Lcom/google/common/util/concurrent/if$do;->throw:Lcom/google/common/util/concurrent/if;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/if;->for()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5
    :try_start_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/if$do$if;->do:Lcom/google/common/util/concurrent/if$do;

    iget-object v1, v1, Lcom/google/common/util/concurrent/if$do;->throw:Lcom/google/common/util/concurrent/if;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/if;->try()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    :try_start_3
    invoke-static {}, Lcom/google/common/util/concurrent/if;->do()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/if$do$if;->do:Lcom/google/common/util/concurrent/if$do;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/case;->class(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/if$do$if;->do:Lcom/google/common/util/concurrent/if$do;

    iget-object v0, v0, Lcom/google/common/util/concurrent/if$do;->throw:Lcom/google/common/util/concurrent/if;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/if;->try()V

    .line 9
    iget-object v0, p0, Lcom/google/common/util/concurrent/if$do$if;->do:Lcom/google/common/util/concurrent/if$do;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->final()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 10
    iget-object v1, p0, Lcom/google/common/util/concurrent/if$do$if;->do:Lcom/google/common/util/concurrent/if$do;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/case;->class(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
