.class public Landroid/support/v4/l8;
.super Lfreemarker/ext/util/if;
.source "SourceFile"


# instance fields
.field private final case:Lfreemarker/ext/beans/try;

.field private final new:Ljava/util/Map;

.field private final try:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/try;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/util/if;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/l8;->new:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v4/l8;->try:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Landroid/support/v4/l8;->case:Lfreemarker/ext/beans/try;

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/l8;->new:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/util/ModelFactory;

    if-nez v1, :cond_2

    .line 3
    iget-object v2, p0, Landroid/support/v4/l8;->new:Ljava/util/Map;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/l8;->new:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/util/ModelFactory;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v3, p0, Landroid/support/v4/l8;->try:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    iget-object v3, p0, Landroid/support/v4/l8;->new:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 8
    iget-object v3, p0, Landroid/support/v4/l8;->try:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 9
    iget-object v3, p0, Landroid/support/v4/l8;->try:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    iget-object v1, p0, Landroid/support/v4/l8;->case:Lfreemarker/ext/beans/try;

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/try;->switch(Ljava/lang/Class;)Lfreemarker/ext/util/ModelFactory;

    move-result-object v1

    .line 11
    iget-object v3, p0, Landroid/support/v4/l8;->new:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v4/l8;->case:Lfreemarker/ext/beans/try;

    invoke-interface {v1, p1, v0}, Lfreemarker/ext/util/ModelFactory;->create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public try(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
