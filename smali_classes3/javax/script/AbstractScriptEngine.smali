.class public abstract Ljavax/script/AbstractScriptEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/script/ScriptEngine;


# instance fields
.field public context:Ljavax/script/ScriptContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljavax/script/SimpleScriptContext;

    invoke-direct {v0}, Ljavax/script/SimpleScriptContext;-><init>()V

    iput-object v0, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    return-void
.end method

.method public constructor <init>(Ljavax/script/Bindings;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljavax/script/AbstractScriptEngine;-><init>()V

    const-string v0, "n is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    const/16 v1, 0x64

    invoke-interface {v0, p1, v1}, Ljavax/script/ScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    return-void
.end method


# virtual methods
.method public eval(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-interface {p0, p1, v0}, Ljavax/script/ScriptEngine;->eval(Ljava/io/Reader;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public eval(Ljava/io/Reader;Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Ljavax/script/AbstractScriptEngine;->getScriptContext(Ljavax/script/Bindings;)Ljavax/script/ScriptContext;

    move-result-object p2

    .line 2
    invoke-interface {p0, p1, p2}, Ljavax/script/ScriptEngine;->eval(Ljava/io/Reader;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-interface {p0, p1, v0}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p2}, Ljavax/script/AbstractScriptEngine;->getScriptContext(Ljavax/script/Bindings;)Ljavax/script/ScriptContext;

    move-result-object p2

    .line 4
    invoke-interface {p0, p1, p2}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-virtual {p0, v0}, Ljavax/script/AbstractScriptEngine;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljavax/script/Bindings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBindings(I)Ljavax/script/Bindings;
    .locals 1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-interface {p1, v0}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-interface {p1, v0}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid scope value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getContext()Ljavax/script/ScriptContext;
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    return-object v0
.end method

.method public getScriptContext(Ljavax/script/Bindings;)Ljavax/script/ScriptContext;
    .locals 3

    .line 1
    new-instance v0, Ljavax/script/SimpleScriptContext;

    invoke-direct {v0}, Ljavax/script/SimpleScriptContext;-><init>()V

    const/16 v1, 0xc8

    .line 2
    invoke-virtual {p0, v1}, Ljavax/script/AbstractScriptEngine;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    :cond_0
    const-string v1, "Engine scope Bindings may not be null."

    .line 4
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v1, 0x64

    .line 5
    invoke-virtual {v0, p1, v1}, Ljavax/script/SimpleScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    .line 6
    iget-object p1, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-interface {p1}, Ljavax/script/ScriptContext;->getReader()Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/script/SimpleScriptContext;->setReader(Ljava/io/Reader;)V

    .line 7
    iget-object p1, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-interface {p1}, Ljavax/script/ScriptContext;->getWriter()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/script/SimpleScriptContext;->setWriter(Ljava/io/Writer;)V

    .line 8
    iget-object p1, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-interface {p1}, Ljavax/script/ScriptContext;->getErrorWriter()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/script/SimpleScriptContext;->setErrorWriter(Ljava/io/Writer;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-virtual {p0, v0}, Ljavax/script/AbstractScriptEngine;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setBindings(Ljavax/script/Bindings;I)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-interface {p2, p1, v0}, Ljavax/script/ScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 2
    iget-object p2, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-interface {p2, p1, v0}, Ljavax/script/ScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    :goto_0
    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid scope value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContext(Ljavax/script/ScriptContext;)V
    .locals 1

    const-string v0, "null context"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    return-void
.end method
