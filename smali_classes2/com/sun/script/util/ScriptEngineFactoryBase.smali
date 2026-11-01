.class public abstract Lcom/sun/script/util/ScriptEngineFactoryBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/script/ScriptEngineFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEngineName()Ljava/lang/String;
    .locals 1

    const-string v0, "javax.script.engine"

    .line 1
    invoke-interface {p0, v0}, Ljavax/script/ScriptEngineFactory;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "javax.script.engine_version"

    .line 1
    invoke-interface {p0, v0}, Ljavax/script/ScriptEngineFactory;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageName()Ljava/lang/String;
    .locals 1

    const-string v0, "javax.script.language"

    .line 1
    invoke-interface {p0, v0}, Ljavax/script/ScriptEngineFactory;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "javax.script.language_version"

    .line 1
    invoke-interface {p0, v0}, Ljavax/script/ScriptEngineFactory;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "javax.script.name"

    .line 1
    invoke-interface {p0, v0}, Ljavax/script/ScriptEngineFactory;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
