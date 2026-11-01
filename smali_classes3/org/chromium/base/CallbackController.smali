.class public final Lorg/chromium/base/CallbackController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/CallbackController$if;,
        Lorg/chromium/base/CallbackController$new;,
        Lorg/chromium/base/CallbackController$for;,
        Lorg/chromium/base/CallbackController$Cancelable;
    }
.end annotation


# instance fields
.field private do:Ljava/util/ArrayList;
    .annotation build Landroid/support/v4/ii0;
        value = "mReadWriteLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/chromium/base/CallbackController$Cancelable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final if:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/CallbackController;->do:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/base/CallbackController;->if:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method

.method public static synthetic do(Lorg/chromium/base/CallbackController;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/base/CallbackController;->if:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

.method private if()V
    .locals 2
    .annotation build Landroid/support/v4/ii0;
        value = "mReadWriteLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/CallbackController;->do:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This CallbackController has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public for()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/base/CallbackController;->if:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/CallbackController$if;->do(Ljava/util/concurrent/locks/Lock;)Lorg/chromium/base/CallbackController$if;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/CallbackController;->if()V

    .line 3
    iget-object v1, p0, Lorg/chromium/base/CallbackController;->do:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/chromium/base/CollectionUtil;->goto(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/CallbackController$Cancelable;

    .line 4
    invoke-interface {v2}, Lorg/chromium/base/CallbackController$Cancelable;->cancel()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lorg/chromium/base/CallbackController;->do:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lorg/chromium/base/CallbackController$if;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/CallbackController$if;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public new(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lorg/chromium/base/CallbackController;->if:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/CallbackController$if;->do(Ljava/util/concurrent/locks/Lock;)Lorg/chromium/base/CallbackController$if;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/CallbackController;->if()V

    .line 3
    new-instance v1, Lorg/chromium/base/CallbackController$new;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/chromium/base/CallbackController$new;-><init>(Lorg/chromium/base/CallbackController;Ljava/lang/Runnable;Lorg/chromium/base/CallbackController$do;)V

    .line 4
    iget-object p1, p0, Lorg/chromium/base/CallbackController;->do:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lorg/chromium/base/CallbackController$if;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/CallbackController$if;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public try(Lorg/chromium/base/Callback;)Lorg/chromium/base/Callback;
    .locals 3
    .param p1    # Lorg/chromium/base/Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/Callback<",
            "TT;>;)",
            "Lorg/chromium/base/Callback<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/CallbackController;->if:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/CallbackController$if;->do(Ljava/util/concurrent/locks/Lock;)Lorg/chromium/base/CallbackController$if;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/CallbackController;->if()V

    .line 3
    new-instance v1, Lorg/chromium/base/CallbackController$for;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/chromium/base/CallbackController$for;-><init>(Lorg/chromium/base/CallbackController;Lorg/chromium/base/Callback;Lorg/chromium/base/CallbackController$do;)V

    .line 4
    iget-object p1, p0, Lorg/chromium/base/CallbackController;->do:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lorg/chromium/base/CallbackController$if;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/CallbackController$if;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method
