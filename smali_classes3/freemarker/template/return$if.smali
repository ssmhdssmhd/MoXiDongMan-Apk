.class Lfreemarker/template/return$if;
.super Lfreemarker/template/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/return;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic this$0:Lfreemarker/template/return;


# direct methods
.method private constructor <init>(Lfreemarker/template/return;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/return$if;->this$0:Lfreemarker/template/return;

    invoke-direct {p0}, Lfreemarker/template/return;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/template/return;Lfreemarker/template/return$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/template/return$if;-><init>(Lfreemarker/template/return;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/return$if;->this$0:Lfreemarker/template/return;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/return$if;->this$0:Lfreemarker/template/return;

    invoke-virtual {v1, p1}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

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

.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/return$if;->this$0:Lfreemarker/template/return;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/return$if;->this$0:Lfreemarker/template/return;

    invoke-virtual {v1, p1}, Lfreemarker/template/return;->get(I)Lfreemarker/template/TemplateModel;

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

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/return$if;->this$0:Lfreemarker/template/return;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/return$if;->this$0:Lfreemarker/template/return;

    invoke-virtual {v1}, Lfreemarker/template/return;->size()I

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

.method public toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/return$if;->this$0:Lfreemarker/template/return;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/return$if;->this$0:Lfreemarker/template/return;

    invoke-virtual {v1}, Lfreemarker/template/return;->toList()Ljava/util/List;

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
