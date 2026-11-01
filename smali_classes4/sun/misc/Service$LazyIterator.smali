.class Lsun/misc/Service$LazyIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyIterator"
.end annotation


# instance fields
.field public configs:Ljava/util/Enumeration;

.field public loader:Ljava/lang/ClassLoader;

.field public nextName:Ljava/lang/String;

.field public pending:Ljava/util/Iterator;

.field public returned:Ljava/util/Set;

.field public service:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    .line 4
    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    .line 5
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lsun/misc/Service$LazyIterator;->returned:Ljava/util/Set;

    .line 6
    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    .line 8
    iput-object p2, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Lsun/misc/Service$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsun/misc/Service$LazyIterator;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    if-nez v0, :cond_2

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "META-INF/services/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_1

    .line 5
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lsun/misc/Service;->access$000(Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    return v1

    .line 10
    :cond_4
    :goto_1
    iget-object v0, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    return v0

    .line 11
    :cond_5
    iget-object v0, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    iget-object v2, p0, Lsun/misc/Service$LazyIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    iget-object v3, p0, Lsun/misc/Service$LazyIterator;->returned:Ljava/util/Set;

    invoke-static {v0, v2, v3}, Lsun/misc/Service;->access$100(Ljava/lang/Class;Ljava/net/URL;Ljava/util/Set;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/Service$LazyIterator;->pending:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/ServiceConfigurationError;
        }
    .end annotation

    const-string v0, "Provider "

    .line 1
    invoke-virtual {p0}, Lsun/misc/Service$LazyIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lsun/misc/Service$LazyIterator;->nextName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    :try_start_0
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->loader:Ljava/lang/ClassLoader;

    invoke-static {v1, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object v3, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lsun/misc/Service;->access$000(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v3, v2

    .line 6
    :goto_0
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not a subtype"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lsun/misc/Service;->access$000(Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    :cond_0
    :try_start_1
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v3

    .line 9
    iget-object v4, p0, Lsun/misc/Service$LazyIterator;->service:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not be instantiated: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lsun/misc/Service;->access$200(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 10
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
