.class public Ljavax/script/ScriptEngineManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private engineSpis:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljavax/script/ScriptEngineFactory;",
            ">;"
        }
    .end annotation
.end field

.field private extensionAssociations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljavax/script/ScriptEngineFactory;",
            ">;"
        }
    .end annotation
.end field

.field private globalScope:Ljavax/script/Bindings;

.field private mimeTypeAssociations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljavax/script/ScriptEngineFactory;",
            ">;"
        }
    .end annotation
.end field

.field private nameAssociations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljavax/script/ScriptEngineFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Ljavax/script/ScriptEngineManager;->canCallerAccessLoader(Ljava/lang/ClassLoader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Ljavax/script/ScriptEngineManager;->init(Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Ljavax/script/ScriptEngineManager;->init(Ljava/lang/ClassLoader;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-direct {p0, p1}, Ljavax/script/ScriptEngineManager;->init(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static synthetic access$000(Ljavax/script/ScriptEngineManager;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljavax/script/ScriptEngineManager;->initEngines(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private canCallerAccessLoader(Ljava/lang/ClassLoader;)Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Ljavax/script/ScriptEngineManager;->getCallerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, v1}, Ljavax/script/ScriptEngineManager;->isAncestor(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    :cond_0
    :try_start_0
    sget-object p1, Lsun/security/util/SecurityConstants;->GET_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private getCallerClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lsun/reflect/Reflection;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private init(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 1
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    iput-object v0, p0, Ljavax/script/ScriptEngineManager;->globalScope:Ljavax/script/Bindings;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/script/ScriptEngineManager;->nameAssociations:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/script/ScriptEngineManager;->extensionAssociations:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/script/ScriptEngineManager;->mimeTypeAssociations:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljavax/script/ScriptEngineManager$1;

    invoke-direct {v0, p0, p1}, Ljavax/script/ScriptEngineManager$1;-><init>(Ljavax/script/ScriptEngineManager;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private initEngines(Ljava/lang/ClassLoader;)V
    .locals 4

    .line 1
    const-class v0, Ljavax/script/ScriptEngineFactory;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {v0, p1}, Lsun/misc/Service;->providers(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Iterator;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lsun/misc/Service;->installedProviders(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catch Lsun/misc/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1
    .catch Lsun/misc/ServiceConfigurationError; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    .line 5
    :try_start_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/script/ScriptEngineFactory;

    .line 6
    iget-object v1, p0, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lsun/misc/ServiceConfigurationError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    :try_start_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScriptEngineManager providers.next(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Lsun/misc/ServiceConfigurationError; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :cond_1
    return-void

    :catch_1
    move-exception p1

    .line 8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScriptEngineManager providers.hasNext(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception p1

    .line 9
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find ScriptEngineFactory providers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private isAncestor(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .locals 0

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/script/ScriptEngineManager;->globalScope:Ljavax/script/Bindings;

    invoke-interface {v0, p1}, Ljavax/script/Bindings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBindings()Ljavax/script/Bindings;
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/script/ScriptEngineManager;->globalScope:Ljavax/script/Bindings;

    return-object v0
.end method

.method public getEngineByExtension(Ljava/lang/String;)Ljavax/script/ScriptEngine;
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ljavax/script/ScriptEngineManager;->extensionAssociations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ljavax/script/ScriptEngineFactory;

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljavax/script/ScriptEngineManager;->getBindings()Ljavax/script/Bindings;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    :cond_0
    iget-object v0, p0, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/script/ScriptEngineFactory;

    .line 7
    :try_start_1
    invoke-interface {v2}, Ljavax/script/ScriptEngineFactory;->getExtensions()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-nez v3, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    :try_start_2
    invoke-interface {v2}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v4

    .line 11
    invoke-virtual {p0}, Ljavax/script/ScriptEngineManager;->getBindings()Ljavax/script/Bindings;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    :catch_2
    nop

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method public getEngineByMimeType(Ljava/lang/String;)Ljavax/script/ScriptEngine;
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ljavax/script/ScriptEngineManager;->mimeTypeAssociations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ljavax/script/ScriptEngineFactory;

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljavax/script/ScriptEngineManager;->getBindings()Ljavax/script/Bindings;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    :cond_0
    iget-object v0, p0, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/script/ScriptEngineFactory;

    .line 7
    :try_start_1
    invoke-interface {v2}, Ljavax/script/ScriptEngineFactory;->getMimeTypes()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-nez v3, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    :try_start_2
    invoke-interface {v2}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v4

    .line 11
    invoke-virtual {p0}, Ljavax/script/ScriptEngineManager;->getBindings()Ljavax/script/Bindings;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    :catch_2
    nop

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method public getEngineByName(Ljava/lang/String;)Ljavax/script/ScriptEngine;
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ljavax/script/ScriptEngineManager;->nameAssociations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Ljavax/script/ScriptEngineFactory;

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljavax/script/ScriptEngineManager;->getBindings()Ljavax/script/Bindings;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    :cond_0
    iget-object v0, p0, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/script/ScriptEngineFactory;

    .line 7
    :try_start_1
    invoke-interface {v2}, Ljavax/script/ScriptEngineFactory;->getNames()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    :goto_0
    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    :try_start_2
    invoke-interface {v2}, Ljavax/script/ScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v4

    .line 11
    invoke-virtual {p0}, Ljavax/script/ScriptEngineManager;->getBindings()Ljavax/script/Bindings;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljavax/script/ScriptEngine;->setBindings(Ljavax/script/Bindings;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    :catch_2
    nop

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public getEngineFactories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/script/ScriptEngineFactory;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Ljavax/script/ScriptEngineManager;->engineSpis:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/script/ScriptEngineFactory;

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/script/ScriptEngineManager;->globalScope:Ljavax/script/Bindings;

    invoke-interface {v0, p1, p2}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerEngineExtension(Ljava/lang/String;Ljavax/script/ScriptEngineFactory;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Ljavax/script/ScriptEngineManager;->extensionAssociations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public registerEngineMimeType(Ljava/lang/String;Ljavax/script/ScriptEngineFactory;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Ljavax/script/ScriptEngineManager;->mimeTypeAssociations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public registerEngineName(Ljava/lang/String;Ljavax/script/ScriptEngineFactory;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Ljavax/script/ScriptEngineManager;->nameAssociations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setBindings(Ljavax/script/Bindings;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Ljavax/script/ScriptEngineManager;->globalScope:Ljavax/script/Bindings;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Global scope cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
