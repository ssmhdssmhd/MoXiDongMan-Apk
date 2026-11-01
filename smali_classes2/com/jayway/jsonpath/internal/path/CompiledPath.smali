.class public Lcom/jayway/jsonpath/internal/path/CompiledPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/internal/Path;


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final isRootPath:Z

.field private final root:Lcom/jayway/jsonpath/internal/path/RootPathToken;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/internal/path/CompiledPath;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/jayway/jsonpath/internal/path/CompiledPath;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jayway/jsonpath/internal/path/RootPathToken;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/CompiledPath;->root:Lcom/jayway/jsonpath/internal/path/RootPathToken;

    .line 3
    iput-boolean p2, p0, Lcom/jayway/jsonpath/internal/path/CompiledPath;->isRootPath:Z

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/internal/EvaluationContext;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jayway/jsonpath/internal/path/CompiledPath;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Z)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Z)Lcom/jayway/jsonpath/internal/EvaluationContext;
    .locals 3

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/path/CompiledPath;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/CompiledPath;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Evaluating path: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;-><init>(Lcom/jayway/jsonpath/internal/Path;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Z)V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->forUpdate()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/jayway/jsonpath/internal/PathRef;->createRoot(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/PathRef;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/jayway/jsonpath/internal/PathRef;->NO_OP:Lcom/jayway/jsonpath/internal/PathRef;

    .line 5
    :goto_0
    iget-object p3, p0, Lcom/jayway/jsonpath/internal/path/CompiledPath;->root:Lcom/jayway/jsonpath/internal/path/RootPathToken;

    const-string p4, ""

    invoke-virtual {p3, p4, p2, p1, v0}, Lcom/jayway/jsonpath/internal/path/RootPathToken;->evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    :try_end_0
    .catch Lcom/jayway/jsonpath/internal/EvaluationAbortException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public isDefinite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/CompiledPath;->root:Lcom/jayway/jsonpath/internal/path/RootPathToken;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isPathDefinite()Z

    move-result v0

    return v0
.end method

.method public isFunctionPath()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/CompiledPath;->root:Lcom/jayway/jsonpath/internal/path/RootPathToken;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/RootPathToken;->isFunctionPath()Z

    move-result v0

    return v0
.end method

.method public isRootPath()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jayway/jsonpath/internal/path/CompiledPath;->isRootPath:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/CompiledPath;->root:Lcom/jayway/jsonpath/internal/path/RootPathToken;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/PathToken;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
