.class final Lcom/sun/script/javascript/RhinoClassShutter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/ClassShutter;


# static fields
.field private static protectedClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static theInstance:Lcom/sun/script/javascript/RhinoClassShutter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/mozilla/javascript/ClassShutter;
    .locals 4

    const-class v0, Lcom/sun/script/javascript/RhinoClassShutter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/sun/script/javascript/RhinoClassShutter;->theInstance:Lcom/sun/script/javascript/RhinoClassShutter;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/sun/script/javascript/RhinoClassShutter;

    invoke-direct {v1}, Lcom/sun/script/javascript/RhinoClassShutter;-><init>()V

    sput-object v1, Lcom/sun/script/javascript/RhinoClassShutter;->theInstance:Lcom/sun/script/javascript/RhinoClassShutter;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sun/script/javascript/RhinoClassShutter;->protectedClasses:Ljava/util/Map;

    const-string v2, "java.security.AccessController"

    .line 4
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    sget-object v1, Lcom/sun/script/javascript/RhinoClassShutter;->theInstance:Lcom/sun/script/javascript/RhinoClassShutter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public visibleToScripts(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "."

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    .line 4
    :cond_0
    :goto_0
    sget-object v0, Lcom/sun/script/javascript/RhinoClassShutter;->protectedClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
