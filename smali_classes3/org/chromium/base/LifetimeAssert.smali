.class public Lorg/chromium/base/LifetimeAssert;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/dl;
    value = "Lifetime assertions aren\'t used when DCHECK is off."
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/LifetimeAssert$for;,
        Lorg/chromium/base/LifetimeAssert$do;,
        Lorg/chromium/base/LifetimeAssert$if;,
        Lorg/chromium/base/LifetimeAssert$TestHook;
    }
.end annotation


# static fields
.field public static for:Lorg/chromium/base/LifetimeAssert$TestHook;


# instance fields
.field public final do:Lorg/chromium/base/LifetimeAssert$for;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final if:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lorg/chromium/base/LifetimeAssert$for;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/base/LifetimeAssert;->do:Lorg/chromium/base/LifetimeAssert$for;

    .line 3
    iput-object p2, p0, Lorg/chromium/base/LifetimeAssert;->if:Ljava/lang/Object;

    return-void
.end method

.method public static do()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/LifetimeAssert$if;
        }
    .end annotation

    .line 1
    sget-boolean v0, Landroid/support/v4/ed;->if:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lorg/chromium/base/LifetimeAssert$for;->if()Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lorg/chromium/base/LifetimeAssert$for;->if()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/LifetimeAssert$for;

    .line 4
    iget-boolean v3, v2, Lorg/chromium/base/LifetimeAssert$for;->do:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Object of type %s was not destroyed after test completed. Refer to \"Caused by\" for where object was created."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    iget-object v5, v2, Lorg/chromium/base/LifetimeAssert$for;->if:Ljava/lang/Class;

    .line 6
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 7
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v3, Lorg/chromium/base/LifetimeAssert$if;

    iget-object v2, v2, Lorg/chromium/base/LifetimeAssert$for;->for:Lorg/chromium/base/LifetimeAssert$do;

    invoke-direct {v3, v1, v2}, Lorg/chromium/base/LifetimeAssert$if;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_2
    :try_start_1
    invoke-static {}, Lorg/chromium/base/LifetimeAssert$for;->if()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 11
    invoke-static {}, Lorg/chromium/base/LifetimeAssert$for;->if()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 12
    throw v1

    :catchall_1
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static for(Ljava/lang/Object;Z)Lorg/chromium/base/LifetimeAssert;
    .locals 3

    .line 1
    sget-boolean v0, Landroid/support/v4/ed;->if:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lorg/chromium/base/LifetimeAssert;

    new-instance v1, Lorg/chromium/base/LifetimeAssert$for;

    new-instance v2, Lorg/chromium/base/LifetimeAssert$do;

    invoke-direct {v2}, Lorg/chromium/base/LifetimeAssert$do;-><init>()V

    invoke-direct {v1, p0, v2, p1}, Lorg/chromium/base/LifetimeAssert$for;-><init>(Ljava/lang/Object;Lorg/chromium/base/LifetimeAssert$do;Z)V

    invoke-direct {v0, v1, p0}, Lorg/chromium/base/LifetimeAssert;-><init>(Lorg/chromium/base/LifetimeAssert$for;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static if(Ljava/lang/Object;)Lorg/chromium/base/LifetimeAssert;
    .locals 4

    .line 1
    sget-boolean v0, Landroid/support/v4/ed;->if:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lorg/chromium/base/LifetimeAssert;

    new-instance v1, Lorg/chromium/base/LifetimeAssert$for;

    new-instance v2, Lorg/chromium/base/LifetimeAssert$do;

    invoke-direct {v2}, Lorg/chromium/base/LifetimeAssert$do;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/chromium/base/LifetimeAssert$for;-><init>(Ljava/lang/Object;Lorg/chromium/base/LifetimeAssert$do;Z)V

    invoke-direct {v0, v1, p0}, Lorg/chromium/base/LifetimeAssert;-><init>(Lorg/chromium/base/LifetimeAssert$for;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static new()V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/ed;->if:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lorg/chromium/base/LifetimeAssert$for;->if()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public static try(Lorg/chromium/base/LifetimeAssert;Z)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/ed;->if:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/base/LifetimeAssert;->if:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lorg/chromium/base/LifetimeAssert;->do:Lorg/chromium/base/LifetimeAssert$for;

    iput-boolean p1, p0, Lorg/chromium/base/LifetimeAssert$for;->do:Z

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
