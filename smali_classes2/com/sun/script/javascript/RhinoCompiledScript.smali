.class final Lcom/sun/script/javascript/RhinoCompiledScript;
.super Ljavax/script/CompiledScript;
.source "SourceFile"


# instance fields
.field private engine:Lcom/sun/script/javascript/RhinoScriptEngine;

.field private script:Lorg/mozilla/javascript/Script;


# direct methods
.method public constructor <init>(Lcom/sun/script/javascript/RhinoScriptEngine;Lorg/mozilla/javascript/Script;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/script/CompiledScript;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/script/javascript/RhinoCompiledScript;->engine:Lcom/sun/script/javascript/RhinoScriptEngine;

    .line 3
    iput-object p2, p0, Lcom/sun/script/javascript/RhinoCompiledScript;->script:Lorg/mozilla/javascript/Script;

    return-void
.end method


# virtual methods
.method public eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/sun/script/javascript/RhinoScriptEngine;->enterContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sun/script/javascript/RhinoCompiledScript;->engine:Lcom/sun/script/javascript/RhinoScriptEngine;

    invoke-virtual {v1, p1}, Lcom/sun/script/javascript/RhinoScriptEngine;->getRuntimeScope(Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/sun/script/javascript/RhinoCompiledScript;->script:Lorg/mozilla/javascript/Script;

    invoke-interface {v1, v0, p1}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/sun/script/javascript/RhinoCompiledScript;->engine:Lcom/sun/script/javascript/RhinoScriptEngine;

    invoke-virtual {v0, p1}, Lcom/sun/script/javascript/RhinoScriptEngine;->unwrapReturnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 7
    :cond_0
    instance-of v1, p1, Lorg/mozilla/javascript/JavaScriptException;

    if-eqz v1, :cond_1

    .line 8
    move-object v1, p1

    check-cast v1, Lorg/mozilla/javascript/JavaScriptException;

    invoke-virtual {v1}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_0
    new-instance v2, Ljavax/script/ScriptException;

    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 12
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_1
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 14
    throw p1
.end method

.method public getEngine()Ljavax/script/ScriptEngine;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/script/javascript/RhinoCompiledScript;->engine:Lcom/sun/script/javascript/RhinoScriptEngine;

    return-object v0
.end method
