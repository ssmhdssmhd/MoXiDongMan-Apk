.class public Landroid/support/v4/wi0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static do:Landroid/os/HandlerThread;

.field private static for:Landroid/os/Handler;

.field private static if:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/wi0;->for:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "HandlerUtils init\u65b9\u6cd5\u672a\u521d\u59cb\u5316"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static do()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/wi0;->do:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/support/v4/wi0;->do:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/v4/wi0;->if:Landroid/os/Handler;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/v4/wi0;->for:Landroid/os/Handler;

    return-void
.end method

.method public static else(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/wi0;->if()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Landroid/support/v4/wi0;->if:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "HandlerUtils init\u65b9\u6cd5\u672a\u521d\u59cb\u5316"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public static for()V
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/wi0;->do:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 3
    sput-object v1, Landroid/support/v4/wi0;->do:Landroid/os/HandlerThread;

    .line 4
    :cond_0
    sget-object v0, Landroid/support/v4/wi0;->if:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    sput-object v1, Landroid/support/v4/wi0;->if:Landroid/os/Handler;

    .line 7
    :cond_1
    sget-object v0, Landroid/support/v4/wi0;->for:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    sput-object v1, Landroid/support/v4/wi0;->for:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public static if()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static new(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/wi0;->for:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "HandlerUtils init\u65b9\u6cd5\u672a\u521d\u59cb\u5316"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static try(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/wi0;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/wi0;->for:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "HandlerUtils init\u65b9\u6cd5\u672a\u521d\u59cb\u5316"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
