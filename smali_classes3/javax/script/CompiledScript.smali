.class public abstract Ljavax/script/CompiledScript;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Ljavax/script/CompiledScript;->getEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    invoke-interface {v0}, Ljavax/script/ScriptEngine;->getContext()Ljavax/script/ScriptContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/script/CompiledScript;->eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/script/CompiledScript;->getEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    invoke-interface {v0}, Ljavax/script/ScriptEngine;->getContext()Ljavax/script/ScriptContext;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    new-instance v1, Ljavax/script/SimpleScriptContext;

    invoke-direct {v1}, Ljavax/script/SimpleScriptContext;-><init>()V

    const/16 v2, 0x64

    .line 3
    invoke-virtual {v1, p1, v2}, Ljavax/script/SimpleScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    const/16 p1, 0xc8

    .line 4
    invoke-interface {v0, p1}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljavax/script/SimpleScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    .line 5
    invoke-interface {v0}, Ljavax/script/ScriptContext;->getWriter()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/script/SimpleScriptContext;->setWriter(Ljava/io/Writer;)V

    .line 6
    invoke-interface {v0}, Ljavax/script/ScriptContext;->getReader()Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/script/SimpleScriptContext;->setReader(Ljava/io/Reader;)V

    .line 7
    invoke-interface {v0}, Ljavax/script/ScriptContext;->getErrorWriter()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/script/SimpleScriptContext;->setErrorWriter(Ljava/io/Writer;)V

    move-object v0, v1

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Ljavax/script/CompiledScript;->eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation
.end method

.method public abstract getEngine()Ljavax/script/ScriptEngine;
.end method
