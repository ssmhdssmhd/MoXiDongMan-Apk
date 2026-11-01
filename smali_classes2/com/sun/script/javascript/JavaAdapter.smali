.class final Lcom/sun/script/javascript/JavaAdapter;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Function;


# instance fields
.field private engine:Ljavax/script/Invocable;


# direct methods
.method private constructor <init>(Ljavax/script/Invocable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/script/javascript/JavaAdapter;->engine:Ljavax/script/Invocable;

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/RhinoException;
        }
    .end annotation

    .line 1
    move-object p0, p1

    check-cast p0, Lcom/sun/script/javascript/RhinoTopLevel;

    .line 2
    invoke-virtual {p0}, Lcom/sun/script/javascript/RhinoTopLevel;->getScriptEngine()Lcom/sun/script/javascript/RhinoScriptEngine;

    move-result-object p2

    .line 3
    new-instance v0, Lcom/sun/script/javascript/JavaAdapter;

    invoke-direct {v0, p2}, Lcom/sun/script/javascript/JavaAdapter;-><init>(Ljavax/script/Invocable;)V

    .line 4
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 5
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    const-string p1, "JavaAdapter"

    .line 6
    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/RhinoException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p4}, Lcom/sun/script/javascript/JavaAdapter;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/RhinoException;
        }
    .end annotation

    .line 1
    array-length p1, p3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    aget-object v0, p3, v0

    .line 3
    instance-of v1, v0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move-object p1, v0

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/sun/script/javascript/JavaAdapter;->engine:Ljavax/script/Invocable;

    const/4 v1, 0x1

    aget-object p3, p3, v1

    invoke-interface {v0, p3, p1}, Ljavax/script/Invocable;->getInterface(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "JavaAdapter: first arg should be interface Class"

    .line 10
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_3
    const-string p1, "JavaAdapter requires two arguments"

    .line 11
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "JavaAdapter"

    return-object v0
.end method
