.class Lfreemarker/template/import$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/import;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/util/Iterator;

.field public final synthetic for:Lfreemarker/template/import;

.field private if:Z


# direct methods
.method public constructor <init>(Lfreemarker/template/import;Ljava/util/Iterator;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/import$do;->for:Lfreemarker/template/import;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/template/import$do;->do:Ljava/util/Iterator;

    .line 3
    iput-boolean p3, p0, Lfreemarker/template/import$do;->if:Z

    return-void
.end method

.method private do()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/import$do;->for:Lfreemarker/template/import;

    invoke-static {v0}, Lfreemarker/template/import;->access$000(Lfreemarker/template/import;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/k52;

    const-string v1, "This collection value wraps a java.util.Iterator, thus it can be listed only once."

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/import$do;->if:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/template/import$do;->for:Lfreemarker/template/import;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lfreemarker/template/import$do;->do()V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lfreemarker/template/import$do;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/import$do;->if:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/template/import$do;->for:Lfreemarker/template/import;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lfreemarker/template/import$do;->do()V

    .line 4
    iget-object v1, p0, Lfreemarker/template/import$do;->for:Lfreemarker/template/import;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lfreemarker/template/import;->access$002(Lfreemarker/template/import;Z)Z

    .line 5
    iput-boolean v2, p0, Lfreemarker/template/import$do;->if:Z

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lfreemarker/template/import$do;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lfreemarker/template/import$do;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lfreemarker/template/TemplateModel;

    if-eqz v1, :cond_1

    check-cast v0, Lfreemarker/template/TemplateModel;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lfreemarker/template/import$do;->for:Lfreemarker/template/import;

    invoke-virtual {v1, v0}, Lfreemarker/template/throws;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :goto_1
    return-object v0

    .line 10
    :cond_2
    new-instance v0, Landroid/support/v4/k52;

    const-string v1, "The collection has no more items."

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0
.end method
