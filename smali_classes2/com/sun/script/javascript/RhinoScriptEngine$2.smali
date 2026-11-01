.class Lcom/sun/script/javascript/RhinoScriptEngine$2;
.super Lcom/sun/script/util/InterfaceImplementor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/script/javascript/RhinoScriptEngine;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/sun/script/javascript/RhinoScriptEngine;


# direct methods
.method public constructor <init>(Lcom/sun/script/javascript/RhinoScriptEngine;Ljavax/script/Invocable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/script/javascript/RhinoScriptEngine$2;->this$0:Lcom/sun/script/javascript/RhinoScriptEngine;

    invoke-direct {p0, p2}, Lcom/sun/script/util/InterfaceImplementor;-><init>(Ljavax/script/Invocable;)V

    return-void
.end method


# virtual methods
.method public convertResult(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isImplemented(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/sun/script/javascript/RhinoScriptEngine;->enterContext()Lorg/mozilla/javascript/Context;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sun/script/javascript/RhinoScriptEngine$2;->this$0:Lcom/sun/script/javascript/RhinoScriptEngine;

    invoke-static {v0}, Lcom/sun/script/javascript/RhinoScriptEngine;->access$300(Lcom/sun/script/javascript/RhinoScriptEngine;)Lcom/sun/script/javascript/RhinoTopLevel;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sun/script/javascript/RhinoScriptEngine$2;->this$0:Lcom/sun/script/javascript/RhinoScriptEngine;

    invoke-static {v0}, Lcom/sun/script/javascript/RhinoScriptEngine;->access$400(Lcom/sun/script/javascript/RhinoScriptEngine;)Ljavax/script/ScriptContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/script/javascript/RhinoScriptEngine;->getRuntimeScope(Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 5
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_4

    aget-object v3, p1, v2

    .line 7
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    instance-of v3, v3, Lorg/mozilla/javascript/Function;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    .line 10
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return v1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 11
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
