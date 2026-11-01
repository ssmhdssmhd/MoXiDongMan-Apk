.class Lfreemarker/template/native$if;
.super Lfreemarker/template/native;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic this$0:Lfreemarker/template/native;


# direct methods
.method private constructor <init>(Lfreemarker/template/native;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    invoke-direct {p0}, Lfreemarker/template/native;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/template/native;Lfreemarker/template/native$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/template/native$if;-><init>(Lfreemarker/template/native;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    invoke-virtual {v1, p1}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    invoke-virtual {v1}, Lfreemarker/template/native;->isEmpty()Z

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

.method public keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    invoke-virtual {v1}, Lfreemarker/template/native;->keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

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

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    invoke-virtual {v1}, Lfreemarker/template/native;->keys()Lfreemarker/template/TemplateCollectionModel;

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

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    invoke-virtual {v1, p1, p2}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    invoke-virtual {v1, p1}, Lfreemarker/template/native;->remove(Ljava/lang/String;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    invoke-virtual {v1}, Lfreemarker/template/native;->size()I

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

.method public toMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    invoke-virtual {v1}, Lfreemarker/template/native;->toMap()Ljava/util/Map;

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

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/native$if;->this$0:Lfreemarker/template/native;

    invoke-virtual {v1}, Lfreemarker/template/native;->values()Lfreemarker/template/TemplateCollectionModel;

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
