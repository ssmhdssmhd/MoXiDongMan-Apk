.class public final Lcom/sun/script/javascript/RhinoScriptEngine;
.super Ljavax/script/AbstractScriptEngine;
.source "SourceFile"

# interfaces
.implements Ljavax/script/Invocable;
.implements Ljavax/script/Compilable;


# static fields
.field private static final DEBUG:Z = false

.field private static final RHINO_JS_VERSION:Ljava/lang/String; = "rhino.js.version"

.field private static final RHINO_OPT_LEVEL:Ljava/lang/String; = "rhino.opt.level"

.field private static final languageVersion:I

.field private static final optimizationLevel:I

.field private static final printSource:Ljava/lang/String; = "function print(str, newline) {                \n    if (typeof(str) == \'undefined\') {         \n        str = \'undefined\';                    \n    } else if (str == null) {                 \n        str = \'null\';                         \n    }                                         \n    var out = context.getWriter();            \n    if (!(out instanceof java.io.PrintWriter))\n        out = new java.io.PrintWriter(out);   \n    out.print(String(str));                   \n    if (newline) out.print(\'\\n\');            \n    out.flush();                              \n}\nfunction println(str) {                       \n    print(str, true);                         \n}"


# instance fields
.field private accCtxt:Ljava/security/AccessControlContext;

.field private factory:Ljavax/script/ScriptEngineFactory;

.field private implementor:Lcom/sun/script/util/InterfaceImplementor;

.field private indexedProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private topLevel:Lcom/sun/script/javascript/RhinoTopLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sun/script/javascript/RhinoScriptEngine;->getLanguageVersion()I

    move-result v0

    sput v0, Lcom/sun/script/javascript/RhinoScriptEngine;->languageVersion:I

    .line 2
    invoke-static {}, Lcom/sun/script/javascript/RhinoScriptEngine;->getOptimizationLevel()I

    move-result v0

    sput v0, Lcom/sun/script/javascript/RhinoScriptEngine;->optimizationLevel:I

    .line 3
    new-instance v0, Lcom/sun/script/javascript/RhinoScriptEngine$1;

    invoke-direct {v0}, Lcom/sun/script/javascript/RhinoScriptEngine$1;-><init>()V

    invoke-static {v0}, Lorg/mozilla/javascript/ContextFactory;->initGlobal(Lorg/mozilla/javascript/ContextFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljavax/script/AbstractScriptEngine;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Ljava/security/AllPermission;

    invoke-direct {v0}, Ljava/security/AllPermission;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->accCtxt:Ljava/security/AccessControlContext;

    .line 5
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sun/script/javascript/RhinoScriptEngine;->enterContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 6
    :try_start_1
    new-instance v1, Lcom/sun/script/javascript/RhinoTopLevel;

    invoke-direct {v1, v0, p0}, Lcom/sun/script/javascript/RhinoTopLevel;-><init>(Lorg/mozilla/javascript/Context;Lcom/sun/script/javascript/RhinoScriptEngine;)V

    iput-object v1, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->topLevel:Lcom/sun/script/javascript/RhinoTopLevel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->indexedProps:Ljava/util/Map;

    .line 9
    new-instance v0, Lcom/sun/script/javascript/RhinoScriptEngine$2;

    invoke-direct {v0, p0, p0}, Lcom/sun/script/javascript/RhinoScriptEngine$2;-><init>(Lcom/sun/script/javascript/RhinoScriptEngine;Ljavax/script/Invocable;)V

    iput-object v0, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->implementor:Lcom/sun/script/util/InterfaceImplementor;

    return-void

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 11
    throw v0
.end method

.method public static synthetic access$000()I
    .locals 1

    .line 1
    sget v0, Lcom/sun/script/javascript/RhinoScriptEngine;->languageVersion:I

    return v0
.end method

.method public static synthetic access$100()I
    .locals 1

    .line 1
    sget v0, Lcom/sun/script/javascript/RhinoScriptEngine;->optimizationLevel:I

    return v0
.end method

.method public static synthetic access$300(Lcom/sun/script/javascript/RhinoScriptEngine;)Lcom/sun/script/javascript/RhinoTopLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->topLevel:Lcom/sun/script/javascript/RhinoTopLevel;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sun/script/javascript/RhinoScriptEngine;)Ljavax/script/ScriptContext;
    .locals 0

    .line 1
    iget-object p0, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    return-object p0
.end method

.method public static enterContext()Lorg/mozilla/javascript/Context;
    .locals 1

    .line 1
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getLanguageVersion()I
    .locals 2

    .line 1
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "rhino.js.version"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    :goto_0
    return v0
.end method

.method private static getOptimizationLevel()I
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "rhino.opt.level"

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    return v1
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/sun/script/javascript/RhinoScriptEngine;->enterContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz p2, :cond_4

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    instance-of v1, p1, Lorg/mozilla/javascript/Scriptable;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->topLevel:Lcom/sun/script/javascript/RhinoTopLevel;

    invoke-static {p1, v1}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 4
    :cond_0
    iget-object v1, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-virtual {p0, v1}, Lcom/sun/script/javascript/RhinoScriptEngine;->getRuntimeScope(Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 5
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 6
    :goto_0
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lorg/mozilla/javascript/Function;

    if-eqz v3, :cond_3

    .line 8
    check-cast v2, Lorg/mozilla/javascript/Function;

    .line 9
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p2

    .line 10
    :goto_1
    invoke-virtual {p0, p3}, Lcom/sun/script/javascript/RhinoScriptEngine;->wrapArguments([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 11
    invoke-interface {v2, v0, v1, p1, p2}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/sun/script/javascript/RhinoScriptEngine;->unwrapReturnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-object p1

    .line 14
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no such method: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method name is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, -0x1

    .line 17
    :cond_5
    new-instance p3, Ljavax/script/ScriptException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1, p2}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    invoke-virtual {p3, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 19
    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :goto_2
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 21
    throw p1
.end method


# virtual methods
.method public compile(Ljava/io/Reader;)Ljavax/script/CompiledScript;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/sun/script/javascript/RhinoScriptEngine;->enterContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    :try_start_0
    const-string v1, "javax.script.filename"

    .line 3
    invoke-virtual {p0, v1}, Ljavax/script/AbstractScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "<Unknown Source>"

    :cond_0
    move-object v3, v1

    .line 4
    iget-object v1, p0, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-virtual {p0, v1}, Lcom/sun/script/javascript/RhinoScriptEngine;->getRuntimeScope(Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    .line 5
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/Context;->compileReader(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/sun/script/javascript/RhinoCompiledScript;

    invoke-direct {v0, p0, p1}, Lcom/sun/script/javascript/RhinoCompiledScript;-><init>(Lcom/sun/script/javascript/RhinoScriptEngine;Lorg/mozilla/javascript/Script;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    :try_start_1
    new-instance v0, Ljavax/script/ScriptException;

    invoke-direct {v0, p1}, Ljavax/script/ScriptException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 10
    throw p1
.end method

.method public compile(Ljava/lang/String;)Ljavax/script/CompiledScript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/script/javascript/RhinoScriptEngine;->compile(Ljava/io/Reader;)Ljavax/script/CompiledScript;

    move-result-object p1

    return-object p1
.end method

.method public createBindings()Ljavax/script/Bindings;
    .locals 1

    .line 1
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    return-object v0
.end method

.method public eval(Ljava/io/Reader;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 6
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
    invoke-virtual {p0, p2}, Lcom/sun/script/javascript/RhinoScriptEngine;->getRuntimeScope(Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string p2, "javax.script.filename"

    .line 3
    invoke-virtual {p0, p2}, Ljavax/script/AbstractScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "<Unknown source>"

    :cond_0
    move-object v3, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/Context;->evaluateReader(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/sun/script/javascript/RhinoScriptEngine;->unwrapReturnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    new-instance p2, Ljavax/script/ScriptException;

    invoke-direct {p2, p1}, Ljavax/script/ScriptException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, -0x1

    .line 9
    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/JavaScriptException;

    if-eqz v0, :cond_2

    .line 10
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/JavaScriptException;

    invoke-virtual {v0}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_0
    new-instance v1, Ljavax/script/ScriptException;

    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p2}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 14
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_1
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 16
    throw p1
.end method

.method public eval(Ljava/lang/String;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    const-string v0, "null script"

    .line 17
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/sun/script/javascript/RhinoScriptEngine;->eval(Ljava/io/Reader;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAccessContext()Ljava/security/AccessControlContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->accCtxt:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method public getFactory()Ljavax/script/ScriptEngineFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->factory:Ljavax/script/ScriptEngineFactory;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/sun/script/javascript/RhinoScriptEngineFactory;

    invoke-direct {v0}, Lcom/sun/script/javascript/RhinoScriptEngineFactory;-><init>()V

    return-object v0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->implementor:Lcom/sun/script/util/InterfaceImplementor;

    invoke-virtual {v1, v0, p1}, Lcom/sun/script/util/InterfaceImplementor;->getInterface(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljavax/script/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getInterface(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->implementor:Lcom/sun/script/util/InterfaceImplementor;

    invoke-virtual {v0, p1, p2}, Lcom/sun/script/util/InterfaceImplementor;->getInterface(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljavax/script/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "script object can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRuntimeScope(Ljavax/script/ScriptContext;)Lorg/mozilla/javascript/Scriptable;
    .locals 7

    const-string v0, "null script context"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/sun/script/javascript/ExternalScriptable;

    iget-object v1, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->indexedProps:Ljava/util/Map;

    invoke-direct {v0, p1, v1}, Lcom/sun/script/javascript/ExternalScriptable;-><init>(Ljavax/script/ScriptContext;Ljava/util/Map;)V

    .line 3
    iget-object v1, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->topLevel:Lcom/sun/script/javascript/RhinoTopLevel;

    invoke-interface {v0, v1}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    const-string v1, "context"

    .line 4
    invoke-interface {v0, v1, v0, p1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/sun/script/javascript/RhinoScriptEngine;->enterContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    :try_start_0
    const-string v3, "function print(str, newline) {                \n    if (typeof(str) == \'undefined\') {         \n        str = \'undefined\';                    \n    } else if (str == null) {                 \n        str = \'null\';                         \n    }                                         \n    var out = context.getWriter();            \n    if (!(out instanceof java.io.PrintWriter))\n        out = new java.io.PrintWriter(out);   \n    out.print(String(str));                   \n    if (newline) out.print(\'\\n\');            \n    out.flush();                              \n}\nfunction println(str) {                       \n    print(str, true);                         \n}"

    const-string v4, "print"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v0

    .line 6
    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 8
    throw p1
.end method

.method public varargs invokeFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/sun/script/javascript/RhinoScriptEngine;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/script/javascript/RhinoScriptEngine;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "script object can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEngineFactory(Ljavax/script/ScriptEngineFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->factory:Ljavax/script/ScriptEngineFactory;

    return-void
.end method

.method public unwrapReturnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/Undefined;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public wrapArguments([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lorg/mozilla/javascript/Context;->emptyArgs:[Ljava/lang/Object;

    return-object p1

    .line 2
    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/sun/script/javascript/RhinoScriptEngine;->topLevel:Lcom/sun/script/javascript/RhinoTopLevel;

    invoke-static {v3, v4}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
