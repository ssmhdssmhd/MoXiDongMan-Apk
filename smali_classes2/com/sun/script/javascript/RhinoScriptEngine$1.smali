.class final Lcom/sun/script/javascript/RhinoScriptEngine$1;
.super Lorg/mozilla/javascript/ContextFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/script/javascript/RhinoScriptEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ContextFactory;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/sun/script/javascript/RhinoScriptEngine$1;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/sun/script/javascript/RhinoScriptEngine$1;->superDoTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private superDoTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/ContextFactory;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/sun/script/javascript/RhinoTopLevel;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/sun/script/javascript/RhinoTopLevel;

    invoke-virtual {v0}, Lcom/sun/script/javascript/RhinoTopLevel;->getAccessContext()Ljava/security/AccessControlContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    new-instance v8, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sun/script/javascript/RhinoScriptEngine$1$1;-><init>(Lcom/sun/script/javascript/RhinoScriptEngine$1;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    invoke-static {v8, v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/sun/script/javascript/RhinoScriptEngine$1;->superDoTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public makeContext()Lorg/mozilla/javascript/Context;
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/mozilla/javascript/ContextFactory;->makeContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/sun/script/javascript/RhinoScriptEngine;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setLanguageVersion(I)V

    .line 3
    invoke-static {}, Lcom/sun/script/javascript/RhinoScriptEngine;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    .line 4
    invoke-static {}, Lcom/sun/script/javascript/RhinoClassShutter;->getInstance()Lorg/mozilla/javascript/ClassShutter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setClassShutter(Lorg/mozilla/javascript/ClassShutter;)V

    .line 5
    invoke-static {}, Lcom/sun/script/javascript/RhinoWrapFactory;->getInstance()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setWrapFactory(Lorg/mozilla/javascript/WrapFactory;)V

    return-object v0
.end method
