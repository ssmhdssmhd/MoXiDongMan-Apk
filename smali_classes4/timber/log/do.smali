.class public final Ltimber/log/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltimber/log/do$if;,
        Ltimber/log/do$for;
    }
.end annotation


# static fields
.field private static final do:[Ltimber/log/do$for;

.field public static volatile for:[Ltimber/log/do$for;

.field private static final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltimber/log/do$for;",
            ">;"
        }
    .end annotation
.end field

.field private static final new:Ltimber/log/do$for;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ltimber/log/do$for;

    .line 1
    sput-object v0, Ltimber/log/do;->do:[Ltimber/log/do$for;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltimber/log/do;->if:Ljava/util/List;

    .line 3
    sput-object v0, Ltimber/log/do;->for:[Ltimber/log/do$for;

    .line 4
    new-instance v0, Ltimber/log/do$do;

    invoke-direct {v0}, Ltimber/log/do$do;-><init>()V

    sput-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    return-void
.end method

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

.method public static break(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0}, Ltimber/log/do$for;->catch(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static case(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0}, Ltimber/log/do$for;->try(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs catch(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/do$for;->class(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs class(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/do$for;->throw(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static const(ILjava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1}, Ltimber/log/do$for;->while(ILjava/lang/Throwable;)V

    return-void
.end method

.method public static default(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0}, Ltimber/log/do$for;->throws(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static do()Ltimber/log/do$for;
    .locals 1

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    return-object v0
.end method

.method public static varargs else(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/do$for;->case(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs extends(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/do$for;->default(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs final(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1, p2, p3}, Ltimber/log/do$for;->import(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs finally(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1}, Ltimber/log/do$for;->extends(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static for(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0}, Ltimber/log/do$for;->if(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static goto()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltimber/log/do$for;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ltimber/log/do;->if:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs if(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1}, Ltimber/log/do$for;->do(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static import()I
    .locals 2

    .line 1
    sget-object v0, Ltimber/log/do;->if:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native(Ltimber/log/do$for;)V
    .locals 4

    .line 1
    sget-object v0, Ltimber/log/do;->if:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ltimber/log/do$for;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ltimber/log/do$for;

    sput-object p0, Ltimber/log/do;->for:[Ltimber/log/do$for;

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot uproot tree which is not planted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs new(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/do$for;->for(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static package(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0}, Ltimber/log/do$for;->finally(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs private(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/do$for;->package(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static public()V
    .locals 2

    .line 1
    sget-object v0, Ltimber/log/do;->if:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    sget-object v1, Ltimber/log/do;->do:[Ltimber/log/do$for;

    sput-object v1, Ltimber/log/do;->for:[Ltimber/log/do$for;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs return(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1}, Ltimber/log/do$for;->public(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static static(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0}, Ltimber/log/do$for;->return(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static super(Ltimber/log/do$for;)V
    .locals 1

    const-string v0, "tree == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    if-eq p0, v0, :cond_0

    .line 3
    sget-object v0, Ltimber/log/do;->if:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ltimber/log/do$for;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ltimber/log/do$for;

    sput-object p0, Ltimber/log/do;->for:[Ltimber/log/do$for;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot plant Timber into itself."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs switch(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/do$for;->static(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs this(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1}, Ltimber/log/do$for;->break(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs throw([Ltimber/log/do$for;)V
    .locals 4

    const-string v0, "trees == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    const-string v3, "trees contains null"

    .line 3
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget-object v3, Ltimber/log/do;->new:Ltimber/log/do$for;

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot plant Timber into itself."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    sget-object v0, Ltimber/log/do;->if:Ljava/util/List;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ltimber/log/do$for;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ltimber/log/do$for;

    sput-object p0, Ltimber/log/do;->for:[Ltimber/log/do$for;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static varargs throws(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1}, Ltimber/log/do$for;->switch(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs try(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/v4/a41;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/do;->new:Ltimber/log/do$for;

    invoke-virtual {v0, p0, p1}, Ltimber/log/do$for;->new(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static while(Ljava/lang/String;)Ltimber/log/do$for;
    .locals 4

    .line 1
    sget-object v0, Ltimber/log/do;->for:[Ltimber/log/do$for;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    aget-object v3, v0, v2

    iget-object v3, v3, Ltimber/log/do$for;->do:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Ltimber/log/do;->new:Ltimber/log/do$for;

    return-object p0
.end method
