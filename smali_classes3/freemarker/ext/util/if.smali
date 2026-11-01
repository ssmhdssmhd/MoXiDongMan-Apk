.class public abstract Lfreemarker/ext/util/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/util/if$do;
    }
.end annotation


# instance fields
.field private do:Z

.field private for:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lfreemarker/template/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field private if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lfreemarker/ext/util/if$do;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lfreemarker/ext/util/if;->do:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lfreemarker/ext/util/if;->if:Ljava/util/Map;

    .line 4
    iput-object v0, p0, Lfreemarker/ext/util/if;->for:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private final case(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/if;->if:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/util/if;->if:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/util/if$do;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lfreemarker/ext/util/if$do;->do()Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final else(Lfreemarker/template/TemplateModel;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/if;->if:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/util/if;->for:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/util/if$do;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lfreemarker/ext/util/if;->if:Ljava/util/Map;

    new-instance v2, Lfreemarker/ext/util/if$do;

    iget-object v3, p0, Lfreemarker/ext/util/if;->for:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, p2, v3}, Lfreemarker/ext/util/if$do;-><init>(Lfreemarker/template/TemplateModel;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lfreemarker/ext/util/if;->if:Ljava/util/Map;

    iget-object v1, v1, Lfreemarker/ext/util/if$do;->do:Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/if;->if:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/util/if;->if:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public for(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    instance-of v0, p1, Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lfreemarker/template/TemplateModelAdapter;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lfreemarker/template/TemplateModelAdapter;

    invoke-interface {p1}, Lfreemarker/template/TemplateModelAdapter;->getTemplateModel()Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lfreemarker/ext/util/if;->do:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lfreemarker/ext/util/if;->try(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0, p1}, Lfreemarker/ext/util/if;->case(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lfreemarker/ext/util/if;->if(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 8
    invoke-direct {p0, v0, p1}, Lfreemarker/ext/util/if;->else(Lfreemarker/template/TemplateModel;Ljava/lang/Object;)V

    :cond_2
    return-object v0

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Lfreemarker/ext/util/if;->if(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized goto(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lfreemarker/ext/util/if;->do:Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/util/if;->if:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/util/if;->for:Ljava/lang/ref/ReferenceQueue;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lfreemarker/ext/util/if;->if:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lfreemarker/ext/util/if;->for:Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract if(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
.end method

.method public declared-synchronized new()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lfreemarker/ext/util/if;->do:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract try(Ljava/lang/Object;)Z
.end method
