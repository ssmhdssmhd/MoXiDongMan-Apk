.class public Lfreemarker/ext/ant/if;
.super Lorg/apache/tools/ant/Task;
.source "SourceFile"


# instance fields
.field private do:Ljava/io/File;

.field private for:Lfreemarker/ext/ant/UnlinkedJythonOperations;

.field private if:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lfreemarker/ext/ant/if;->if:Ljava/lang/String;

    return-void
.end method

.method private if()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/ext/ant/if;->for:Lfreemarker/ext/ant/UnlinkedJythonOperations;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "freemarker.ext.ant.UnlinkedJythonOperationsImpl"

    .line 2
    invoke-static {v0}, Lfreemarker/template/utility/if;->try(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/ant/UnlinkedJythonOperations;

    iput-object v0, p0, Lfreemarker/ext/ant/if;->for:Lfreemarker/ext/ant/UnlinkedJythonOperations;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception has been thrown when trying to create a freemarker.ext.ant.JythonAntTask object. The exception was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A ClassNotFoundException has been thrown when trying to get the freemarker.ext.ant.UnlinkedJythonOperationsImpl class. The error message was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/ext/ant/if;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/ant/if;->if:Ljava/lang/String;

    return-void
.end method

.method public for(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/ant/if;->do:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/ext/ant/if;->if()V

    .line 3
    iget-object v0, p0, Lfreemarker/ext/ant/if;->for:Lfreemarker/ext/ant/UnlinkedJythonOperations;

    iget-object v1, p0, Lfreemarker/ext/ant/if;->do:Ljava/io/File;

    invoke-interface {v0, v1, p1}, Lfreemarker/ext/ant/UnlinkedJythonOperations;->execute(Ljava/io/File;Ljava/util/Map;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/ant/if;->if:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lfreemarker/ext/ant/if;->if()V

    .line 6
    iget-object v0, p0, Lfreemarker/ext/ant/if;->project:Lorg/apache/tools/ant/Project;

    iget-object v1, p0, Lfreemarker/ext/ant/if;->if:Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/ext/ant/if;->project:Lorg/apache/tools/ant/Project;

    .line 7
    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getProperties()Ljava/util/Hashtable;

    move-result-object v2

    .line 8
    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/ProjectHelper;->replaceProperties(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lfreemarker/ext/ant/if;->for:Lfreemarker/ext/ant/UnlinkedJythonOperations;

    invoke-interface {v1, v0, p1}, Lfreemarker/ext/ant/UnlinkedJythonOperations;->execute(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public new(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/ant/if;->if()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/ant/if;->do:Ljava/io/File;

    return-void
.end method
