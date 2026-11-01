.class public interface abstract Lcom/google/common/util/concurrent/Service;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation runtime Landroid/support/v4/v10;
    value = "Create an AbstractIdleService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Service$if;,
        Lcom/google/common/util/concurrent/Service$for;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/common/util/concurrent/Service$if;Ljava/util/concurrent/Executor;)V
.end method

.method public abstract awaitRunning()V
.end method

.method public abstract awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public abstract awaitTerminated()V
.end method

.method public abstract awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public abstract failureCause()Ljava/lang/Throwable;
.end method

.method public abstract isRunning()Z
.end method

.method public abstract startAsync()Lcom/google/common/util/concurrent/Service;
    .annotation build Landroid/support/v4/lf;
    .end annotation
.end method

.method public abstract state()Lcom/google/common/util/concurrent/Service$for;
.end method

.method public abstract stopAsync()Lcom/google/common/util/concurrent/Service;
    .annotation build Landroid/support/v4/lf;
    .end annotation
.end method
