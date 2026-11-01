.class public Lorg/chromium/net/impl/CronetLibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "cronet"
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetLibraryLoader$Natives;
    }
.end annotation


# static fields
.field private static volatile case:Z

.field private static final do:Ljava/lang/Object;

.field private static final else:Landroid/os/ConditionVariable;

.field private static final for:Ljava/lang/String;

.field public static final synthetic goto:Z

.field private static final if:Ljava/lang/String;

.field private static final new:Landroid/os/HandlerThread;

.field private static volatile try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/net/impl/CronetLibraryLoader;->do:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cronet."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/v4/im0;->if()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/impl/CronetLibraryLoader;->if:Ljava/lang/String;

    .line 3
    const-class v0, Lorg/chromium/net/impl/CronetLibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/impl/CronetLibraryLoader;->for:Ljava/lang/String;

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CronetInit"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/net/impl/CronetLibraryLoader;->new:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lorg/chromium/net/impl/CronetLibraryLoader;->try:Z

    .line 6
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lorg/chromium/net/impl/CronetLibraryLoader;->else:Landroid/os/ConditionVariable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/content/Context;Lorg/chromium/net/impl/if;)V
    .locals 5

    .line 1
    sget-object v0, Lorg/chromium/net/impl/CronetLibraryLoader;->do:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lorg/chromium/net/impl/CronetLibraryLoader;->case:Z

    if-nez v1, :cond_1

    .line 3
    invoke-static {p0}, Lorg/chromium/base/try;->goto(Landroid/content/Context;)V

    .line 4
    sget-object p0, Lorg/chromium/net/impl/CronetLibraryLoader;->new:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 6
    :cond_0
    new-instance p0, Lorg/chromium/net/impl/CronetLibraryLoader$do;

    invoke-direct {p0}, Lorg/chromium/net/impl/CronetLibraryLoader$do;-><init>()V

    invoke-static {p0}, Lorg/chromium/net/impl/CronetLibraryLoader;->new(Ljava/lang/Runnable;)V

    .line 7
    :cond_1
    sget-boolean p0, Lorg/chromium/net/impl/CronetLibraryLoader;->try:Z

    if-nez p0, :cond_4

    .line 8
    invoke-virtual {p1}, Lorg/chromium/net/impl/if;->protected()Lorg/chromium/net/impl/VersionSafeCallbacks$if;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p1}, Lorg/chromium/net/impl/if;->protected()Lorg/chromium/net/impl/VersionSafeCallbacks$if;

    move-result-object p0

    sget-object p1, Lorg/chromium/net/impl/CronetLibraryLoader;->if:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$if;->do(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object p0, Lorg/chromium/net/impl/CronetLibraryLoader;->if:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-static {}, Landroid/support/v4/im0;->if()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {}, Lorg/chromium/net/impl/for;->if()Lorg/chromium/net/impl/CronetLibraryLoader$Natives;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/net/impl/CronetLibraryLoader$Natives;->getCronetVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 13
    sget-object p1, Lorg/chromium/net/impl/CronetLibraryLoader;->for:Ljava/lang/String;

    const-string v4, "Cronet version: %s, arch: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "os.arch"

    .line 14
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 15
    invoke-static {p1, v4, v2}, Landroid/support/v4/rv0;->goto(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    sput-boolean v3, Lorg/chromium/net/impl/CronetLibraryLoader;->try:Z

    .line 17
    sget-object p0, Lorg/chromium/net/impl/CronetLibraryLoader;->else:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_1

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v4, "Expected Cronet version number %s, actual version number %s."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    .line 19
    invoke-static {}, Lorg/chromium/net/impl/for;->if()Lorg/chromium/net/impl/CronetLibraryLoader$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/net/impl/CronetLibraryLoader$Natives;->getCronetVersion()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 20
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static ensureInitializedFromNative()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    sget-object v0, Lorg/chromium/net/impl/CronetLibraryLoader;->do:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    sput-boolean v1, Lorg/chromium/net/impl/CronetLibraryLoader;->try:Z

    .line 3
    sget-object v1, Lorg/chromium/net/impl/CronetLibraryLoader;->else:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetLibraryLoader;->do(Landroid/content/Context;Lorg/chromium/net/impl/if;)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static for()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/net/impl/CronetLibraryLoader;->new:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getDefaultUserAgent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/id2;->if(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static if()V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/chromium/net/impl/CronetLibraryLoader;->case:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->init()Lorg/chromium/net/NetworkChangeNotifier;

    .line 3
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->import()V

    .line 4
    sget-object v0, Lorg/chromium/net/impl/CronetLibraryLoader;->else:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 5
    invoke-static {}, Lorg/chromium/net/impl/for;->if()Lorg/chromium/net/impl/CronetLibraryLoader$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/net/impl/CronetLibraryLoader$Natives;->cronetInitOnInitThread()V

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lorg/chromium/net/impl/CronetLibraryLoader;->case:Z

    return-void
.end method

.method public static new(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/net/impl/CronetLibraryLoader;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lorg/chromium/net/impl/CronetLibraryLoader;->new:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private static setNetworkThreadPriorityOnNetworkThread(I)V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method
