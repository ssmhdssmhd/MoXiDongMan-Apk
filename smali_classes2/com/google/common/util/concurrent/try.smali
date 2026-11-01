.class public abstract Lcom/google/common/util/concurrent/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/try$for;,
        Lcom/google/common/util/concurrent/try$try;,
        Lcom/google/common/util/concurrent/try$new;
    }
.end annotation


# static fields
.field private static final if:Ljava/util/logging/Logger;


# instance fields
.field private final do:Lcom/google/common/util/concurrent/case;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/try;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/try;->if:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/try$try;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/try$try;-><init>(Lcom/google/common/util/concurrent/try;Lcom/google/common/util/concurrent/try$do;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/try;->do:Lcom/google/common/util/concurrent/case;

    return-void
.end method

.method public static synthetic do()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/try;->if:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic if(Lcom/google/common/util/concurrent/try;)Lcom/google/common/util/concurrent/case;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/try;->do:Lcom/google/common/util/concurrent/case;

    return-object p0
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/Service$if;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try;->do:Lcom/google/common/util/concurrent/case;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/case;->addListener(Lcom/google/common/util/concurrent/Service$if;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final awaitRunning()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try;->do:Lcom/google/common/util/concurrent/case;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->awaitRunning()V

    return-void
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/try;->do:Lcom/google/common/util/concurrent/case;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/case;->awaitRunning(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final awaitTerminated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try;->do:Lcom/google/common/util/concurrent/case;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->awaitTerminated()V

    return-void
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/try;->do:Lcom/google/common/util/concurrent/case;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/case;->awaitTerminated(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try;->do:Lcom/google/common/util/concurrent/case;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->failureCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public for()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/try$if;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/try$if;-><init>(Lcom/google/common/util/concurrent/try;)V

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/common/util/concurrent/try$do;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/try$do;-><init>(Lcom/google/common/util/concurrent/try;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 4
    invoke-static {}, Lcom/google/common/util/concurrent/implements;->for()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/google/common/util/concurrent/try;->addListener(Lcom/google/common/util/concurrent/Service$if;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public goto()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try;->do:Lcom/google/common/util/concurrent/case;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->isRunning()Z

    move-result v0

    return v0
.end method

.method public abstract new()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/Service;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try;->do:Lcom/google/common/util/concurrent/case;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->startAsync()Lcom/google/common/util/concurrent/Service;

    return-object p0
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try;->do:Lcom/google/common/util/concurrent/case;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v0

    return-object v0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/Service;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try;->do:Lcom/google/common/util/concurrent/case;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->stopAsync()Lcom/google/common/util/concurrent/Service;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/try;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/try;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract try()Lcom/google/common/util/concurrent/try$new;
.end method
