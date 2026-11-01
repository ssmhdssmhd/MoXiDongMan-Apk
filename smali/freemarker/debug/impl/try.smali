.class Lfreemarker/debug/impl/try;
.super Lfreemarker/debug/impl/for;
.source "SourceFile"

# interfaces
.implements Lfreemarker/debug/DebuggedEnvironment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/debug/impl/try$new;,
        Lfreemarker/debug/impl/try$case;,
        Lfreemarker/debug/impl/try$for;,
        Lfreemarker/debug/impl/try$if;,
        Lfreemarker/debug/impl/try$try;
    }
.end annotation


# static fields
.field private static break:Ljava/util/Set; = null

.field private static final case:J = 0x1L

.field private static final else:Lfreemarker/cache/CacheStorage;

.field private static final goto:Ljava/lang/Object;

.field private static this:J


# instance fields
.field private new:Z

.field private final try:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/cache/throw;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lfreemarker/cache/throw;-><init>(Ljava/util/Map;)V

    sput-object v0, Lfreemarker/debug/impl/try;->else:Lfreemarker/cache/CacheStorage;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/debug/impl/try;->goto:Ljava/lang/Object;

    const-wide/16 v0, 0x1

    .line 3
    sput-wide v0, Lfreemarker/debug/impl/try;->this:J

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfreemarker/debug/impl/try;->break:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lfreemarker/core/d0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/debug/impl/try$new;

    invoke-direct {v0, p1}, Lfreemarker/debug/impl/try$new;-><init>(Lfreemarker/core/d0;)V

    const/16 p1, 0x800

    invoke-direct {p0, v0, p1}, Lfreemarker/debug/impl/for;-><init>(Lfreemarker/template/TemplateModel;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lfreemarker/debug/impl/try;->new:Z

    .line 3
    sget-object p1, Lfreemarker/debug/impl/try;->goto:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-wide v0, Lfreemarker/debug/impl/try;->this:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lfreemarker/debug/impl/try;->this:J

    iput-wide v0, p0, Lfreemarker/debug/impl/try;->try:J

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static for()V
    .locals 3

    .line 1
    sget-object v0, Lfreemarker/debug/impl/try;->break:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    :try_start_0
    check-cast v1, Ljava/rmi/Remote;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/rmi/server/UnicastRemoteObject;->unexportObject(Ljava/rmi/Remote;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized new(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    const-class v0, Lfreemarker/debug/impl/try;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lfreemarker/debug/impl/try;->else:Lfreemarker/cache/CacheStorage;

    invoke-interface {v1, p0}, Lfreemarker/cache/CacheStorage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 2
    instance-of v3, p0, Lfreemarker/template/TemplateModel;

    if-eqz v3, :cond_2

    .line 3
    instance-of v2, p0, Lfreemarker/debug/impl/try$for;

    if-eqz v2, :cond_0

    const/16 v2, 0x2000

    goto :goto_0

    .line 4
    :cond_0
    instance-of v2, p0, Lfreemarker/debug/impl/try$case;

    if-eqz v2, :cond_1

    const/16 v2, 0x1000

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    new-instance v3, Lfreemarker/debug/impl/for;

    move-object v4, p0

    check-cast v4, Lfreemarker/template/TemplateModel;

    invoke-direct {v3, v4, v2}, Lfreemarker/debug/impl/for;-><init>(Lfreemarker/template/TemplateModel;I)V

    move-object v2, v3

    goto :goto_1

    .line 6
    :cond_2
    instance-of v3, p0, Lfreemarker/core/d0;

    if-eqz v3, :cond_3

    .line 7
    new-instance v2, Lfreemarker/debug/impl/try;

    move-object v3, p0

    check-cast v3, Lfreemarker/core/d0;

    invoke-direct {v2, v3}, Lfreemarker/debug/impl/try;-><init>(Lfreemarker/core/d0;)V

    goto :goto_1

    .line 8
    :cond_3
    instance-of v3, p0, Lfreemarker/template/static;

    if-eqz v3, :cond_4

    .line 9
    new-instance v2, Lfreemarker/debug/impl/try$case;

    move-object v3, p0

    check-cast v3, Lfreemarker/template/static;

    invoke-direct {v2, v3}, Lfreemarker/debug/impl/try$case;-><init>(Lfreemarker/template/static;)V

    goto :goto_1

    .line 10
    :cond_4
    instance-of v3, p0, Lfreemarker/template/do;

    if-eqz v3, :cond_5

    .line 11
    new-instance v2, Lfreemarker/debug/impl/try$for;

    move-object v3, p0

    check-cast v3, Lfreemarker/template/do;

    invoke-direct {v2, v3}, Lfreemarker/debug/impl/try$for;-><init>(Lfreemarker/template/do;)V

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 12
    invoke-interface {v1, p0, v2}, Lfreemarker/cache/CacheStorage;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    :cond_6
    instance-of p0, v2, Ljava/rmi/Remote;

    if-eqz p0, :cond_7

    .line 14
    sget-object p0, Lfreemarker/debug/impl/try;->break:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_7
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lfreemarker/debug/impl/try;->try:J

    return-wide v0
.end method

.method public resume()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lfreemarker/debug/impl/try;->new:Z

    .line 2
    invoke-virtual {p0}, Lfreemarker/debug/impl/try;->resume()V

    return-void
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/debug/impl/try;->new:Z

    return v0
.end method
