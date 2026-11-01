.class public interface abstract Lorg/chromium/base/task/TaskExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canRunTaskImmediately(Landroid/support/v4/b52;)Z
.end method

.method public abstract createSequencedTaskRunner(Landroid/support/v4/b52;)Lorg/chromium/base/task/SequencedTaskRunner;
.end method

.method public abstract createSingleThreadTaskRunner(Landroid/support/v4/b52;)Lorg/chromium/base/task/SingleThreadTaskRunner;
.end method

.method public abstract createTaskRunner(Landroid/support/v4/b52;)Lorg/chromium/base/task/TaskRunner;
.end method

.method public abstract postDelayedTask(Landroid/support/v4/b52;Ljava/lang/Runnable;J)V
.end method
