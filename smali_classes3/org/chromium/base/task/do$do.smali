.class Lorg/chromium/base/task/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/task/do;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/base/task/do;


# direct methods
.method public constructor <init>(Lorg/chromium/base/task/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/base/task/do$do;->do:Lorg/chromium/base/task/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/task/do$do;->do:Lorg/chromium/base/task/do;

    invoke-static {v0}, Lorg/chromium/base/task/do;->for(Lorg/chromium/base/task/do;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lorg/chromium/base/task/do$do;->do:Lorg/chromium/base/task/do;

    invoke-virtual {v2}, Lorg/chromium/base/task/do;->this()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v1, p0, Lorg/chromium/base/task/do$do;->do:Lorg/chromium/base/task/do;

    invoke-static {v1, v0}, Lorg/chromium/base/task/do;->try(Lorg/chromium/base/task/do;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v2

    .line 5
    :try_start_1
    iget-object v3, p0, Lorg/chromium/base/task/do$do;->do:Lorg/chromium/base/task/do;

    invoke-static {v3}, Lorg/chromium/base/task/do;->new(Lorg/chromium/base/task/do;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 7
    iget-object v2, p0, Lorg/chromium/base/task/do$do;->do:Lorg/chromium/base/task/do;

    invoke-static {v2, v0}, Lorg/chromium/base/task/do;->try(Lorg/chromium/base/task/do;Ljava/lang/Object;)V

    .line 8
    throw v1
.end method
