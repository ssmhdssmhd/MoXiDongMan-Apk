.class public Lcom/wsw/cospa/utils/implements;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Ljavax/script/ScriptEngine;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/script/javascript/RhinoScriptEngine;

    invoke-direct {v0}, Lcom/sun/script/javascript/RhinoScriptEngine;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/implements;->do:Ljavax/script/ScriptEngine;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 2
    new-instance v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;-><init>()V

    const-string v2, "java"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "baseUrl"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;

    invoke-direct {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;-><init>()V

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;->setBindings(Ljavax/script/SimpleBindings;)V

    .line 5
    sget-object p1, Lcom/wsw/cospa/utils/implements;->do:Ljavax/script/ScriptEngine;

    invoke-interface {p1, p0, v0}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 2
    new-instance v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-direct {v1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;-><init>(Ljava/lang/String;)V

    const-string p2, "java"

    invoke-virtual {v0, p2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "baseUrl"

    .line 3
    invoke-virtual {v0, p2, p1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;

    invoke-direct {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;-><init>()V

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;->setBindings(Ljavax/script/SimpleBindings;)V

    .line 5
    sget-object p1, Lcom/wsw/cospa/utils/implements;->do:Ljavax/script/ScriptEngine;

    invoke-interface {p1, p0, v0}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
