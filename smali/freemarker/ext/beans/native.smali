.class public Lfreemarker/ext/beans/native;
.super Lfreemarker/ext/beans/new;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;
.implements Lfreemarker/template/TemplateCollectionModel;


# instance fields
.field private else:Z


# direct methods
.method public constructor <init>(Ljava/util/Enumeration;Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/new;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/try;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lfreemarker/ext/beans/native;->else:Z

    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/native;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    check-cast v0, Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lfreemarker/ext/beans/native;->else:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lfreemarker/ext/beans/native;->else:Z

    .line 4
    monitor-exit p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroid/support/v4/k52;

    const-string v1, "This collection is stateful and can not be iterated over the second time."

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    check-cast v0, Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/ext/beans/new;->this(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Landroid/support/v4/k52;

    const-string v1, "No more elements in the enumeration."

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0
.end method
