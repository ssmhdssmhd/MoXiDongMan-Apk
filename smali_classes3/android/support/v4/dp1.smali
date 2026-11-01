.class public final Landroid/support/v4/dp1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile do:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/try;",
            ">;",
            "Lio/reactivex/try;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile if:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/try;",
            "Lio/reactivex/try;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static break(Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/try;",
            "Lio/reactivex/try;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Landroid/support/v4/dp1;->if:Lio/reactivex/functions/Function;

    return-void
.end method

.method public static case(Ljava/util/concurrent/Callable;)Lio/reactivex/try;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/try;",
            ">;)",
            "Lio/reactivex/try;"
        }
    .end annotation

    const-string v0, "scheduler == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Landroid/support/v4/dp1;->do:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/dp1;->for(Ljava/util/concurrent/Callable;)Lio/reactivex/try;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {v0, p0}, Landroid/support/v4/dp1;->if(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/try;

    move-result-object p0

    return-object p0
.end method

.method public static do(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {p0}, Landroid/support/v4/t80;->do(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static else(Lio/reactivex/try;)Lio/reactivex/try;
    .locals 1

    const-string v0, "scheduler == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Landroid/support/v4/dp1;->if:Lio/reactivex/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-static {v0, p0}, Landroid/support/v4/dp1;->do(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/try;

    return-object p0
.end method

.method public static for(Ljava/util/concurrent/Callable;)Lio/reactivex/try;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/try;",
            ">;)",
            "Lio/reactivex/try;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/try;

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Scheduler Callable returned null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {p0}, Landroid/support/v4/t80;->do(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static goto()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/support/v4/dp1;->this(Lio/reactivex/functions/Function;)V

    .line 2
    invoke-static {v0}, Landroid/support/v4/dp1;->break(Lio/reactivex/functions/Function;)V

    return-void
.end method

.method public static if(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/try;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/try;",
            ">;",
            "Lio/reactivex/try;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/try;",
            ">;)",
            "Lio/reactivex/try;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/dp1;->do(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/try;

    const-string p1, "Scheduler Callable returned null"

    .line 2
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static new()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/try;",
            ">;",
            "Lio/reactivex/try;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dp1;->do:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static this(Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/try;",
            ">;",
            "Lio/reactivex/try;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Landroid/support/v4/dp1;->do:Lio/reactivex/functions/Function;

    return-void
.end method

.method public static try()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/try;",
            "Lio/reactivex/try;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dp1;->if:Lio/reactivex/functions/Function;

    return-object v0
.end method
