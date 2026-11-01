.class final Lcom/sun/script/javascript/RhinoWrapFactory;
.super Lorg/mozilla/javascript/WrapFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/script/javascript/RhinoWrapFactory$RhinoJavaObject;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static theInstance:Lcom/sun/script/javascript/RhinoWrapFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/WrapFactory;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/mozilla/javascript/WrapFactory;
    .locals 2

    const-class v0, Lcom/sun/script/javascript/RhinoWrapFactory;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/sun/script/javascript/RhinoWrapFactory;->theInstance:Lcom/sun/script/javascript/RhinoWrapFactory;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/sun/script/javascript/RhinoWrapFactory;

    invoke-direct {v1}, Lcom/sun/script/javascript/RhinoWrapFactory;-><init>()V

    sput-object v1, Lcom/sun/script/javascript/RhinoWrapFactory;->theInstance:Lcom/sun/script/javascript/RhinoWrapFactory;

    .line 3
    :cond_0
    sget-object v1, Lcom/sun/script/javascript/RhinoWrapFactory;->theInstance:Lcom/sun/script/javascript/RhinoWrapFactory;
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
.method public wrapAsJavaObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/sun/script/javascript/RhinoClassShutter;->getInstance()Lorg/mozilla/javascript/ClassShutter;

    move-result-object v1

    .line 3
    instance-of v2, p3, Ljava/lang/ClassLoader;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lsun/security/util/SecurityConstants;->GET_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/WrapFactory;->wrapAsJavaObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    instance-of v2, p3, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 7
    move-object v0, p3

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    instance-of v2, p3, Ljava/lang/reflect/Member;

    if-eqz v2, :cond_4

    .line 9
    move-object v2, p3

    check-cast v2, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v2}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v3

    .line 11
    :cond_3
    invoke-interface {v2}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_6

    .line 12
    invoke-interface {v1, v0}, Lorg/mozilla/javascript/ClassShutter;->visibleToScripts(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return-object v3

    .line 13
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/WrapFactory;->wrapAsJavaObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    .line 14
    :cond_6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-interface {v1, v2}, Lorg/mozilla/javascript/ClassShutter;->visibleToScripts(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz p4, :cond_7

    .line 17
    invoke-virtual {p4}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 18
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-interface {v1, p1}, Lorg/mozilla/javascript/ClassShutter;->visibleToScripts(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    move-object p4, v0

    .line 21
    :goto_1
    new-instance p1, Lcom/sun/script/javascript/RhinoWrapFactory$RhinoJavaObject;

    invoke-direct {p1, p2, p3, p4}, Lcom/sun/script/javascript/RhinoWrapFactory$RhinoJavaObject;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)V

    return-object p1

    .line 22
    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/WrapFactory;->wrapAsJavaObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method
