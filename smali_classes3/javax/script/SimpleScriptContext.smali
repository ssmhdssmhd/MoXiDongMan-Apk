.class public Ljavax/script/SimpleScriptContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/script/ScriptContext;


# static fields
.field private static scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public engineScope:Ljavax/script/Bindings;

.field public errorWriter:Ljava/io/Writer;

.field public globalScope:Ljavax/script/Bindings;

.field public reader:Ljava/io/Reader;

.field public writer:Ljava/io/Writer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljavax/script/SimpleScriptContext;->scopes:Ljava/util/List;

    const/16 v1, 0x64

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Ljavax/script/SimpleScriptContext;->scopes:Ljava/util/List;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Ljavax/script/SimpleScriptContext;->scopes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljavax/script/SimpleScriptContext;->scopes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    iput-object v0, p0, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    .line 4
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljavax/script/SimpleScriptContext;->reader:Ljava/io/Reader;

    .line 5
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Ljavax/script/SimpleScriptContext;->writer:Ljava/io/Writer;

    .line 6
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Ljavax/script/SimpleScriptContext;->errorWriter:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    invoke-interface {v0, p1}, Ljavax/script/Bindings;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    .line 2
    invoke-virtual {p0, p1, v0}, Ljavax/script/SimpleScriptContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljavax/script/Bindings;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    .line 4
    invoke-virtual {p0, p1, v0}, Ljavax/script/SimpleScriptContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x64

    if-eq p2, v0, :cond_2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    .line 5
    iget-object p2, p0, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2, p1}, Ljavax/script/Bindings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal scope value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    iget-object p2, p0, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    invoke-interface {p2, p1}, Ljavax/script/Bindings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributesScope(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    invoke-interface {v0, p1}, Ljavax/script/Bindings;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x64

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljavax/script/Bindings;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xc8

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getBindings(I)Ljavax/script/Bindings;
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    return-object p1

    :cond_0
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal scope value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getErrorWriter()Ljava/io/Writer;
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/script/SimpleScriptContext;->errorWriter:Ljava/io/Writer;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/script/SimpleScriptContext;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public getScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljavax/script/SimpleScriptContext;->scopes:Ljava/util/List;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/script/SimpleScriptContext;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-eq p2, v1, :cond_2

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    .line 1
    invoke-virtual {p0, v1}, Ljavax/script/SimpleScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljavax/script/SimpleScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/script/Bindings;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal scope value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    invoke-virtual {p0, v1}, Ljavax/script/SimpleScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p0, v1}, Ljavax/script/SimpleScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/script/Bindings;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    const/16 v0, 0x64

    if-eq p3, v0, :cond_2

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1

    .line 1
    iget-object p3, p0, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3, p1, p2}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal scope value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    iget-object p3, p0, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    invoke-interface {p3, p1, p2}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBindings(Ljavax/script/Bindings;I)V
    .locals 1

    const/16 v0, 0x64

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 1
    iput-object p1, p0, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid scope value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p2, "Engine scope cannot be null."

    .line 3
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    :goto_0
    return-void
.end method

.method public setErrorWriter(Ljava/io/Writer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljavax/script/SimpleScriptContext;->errorWriter:Ljava/io/Writer;

    return-void
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljavax/script/SimpleScriptContext;->reader:Ljava/io/Reader;

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljavax/script/SimpleScriptContext;->writer:Ljava/io/Writer;

    return-void
.end method
