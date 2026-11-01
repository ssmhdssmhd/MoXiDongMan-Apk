.class public Lcom/jayway/jsonpath/internal/path/RootPathToken;
.super Lcom/jayway/jsonpath/internal/path/PathToken;
.source "SourceFile"


# instance fields
.field private final rootToken:Ljava/lang/String;

.field private tail:Lcom/jayway/jsonpath/internal/path/PathToken;

.field private tokenCount:I


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken;->rootToken:Ljava/lang/String;

    .line 3
    iput-object p0, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken;->tail:Lcom/jayway/jsonpath/internal/path/PathToken;

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken;->tokenCount:I

    return-void
.end method


# virtual methods
.method public append(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/RootPathToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken;->tail:Lcom/jayway/jsonpath/internal/path/PathToken;

    invoke-virtual {v0, p1}, Lcom/jayway/jsonpath/internal/path/PathToken;->appendTailToken(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken;->tail:Lcom/jayway/jsonpath/internal/path/PathToken;

    .line 2
    iget p1, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken;->tokenCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken;->tokenCount:I

    return-object p0
.end method

.method public evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->forUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/jayway/jsonpath/internal/PathRef;->NO_OP:Lcom/jayway/jsonpath/internal/PathRef;

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken;->rootToken:Ljava/lang/String;

    invoke-virtual {p4, p1, p2, p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->addResult(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->next()Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object p1

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken;->rootToken:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/jayway/jsonpath/internal/path/PathToken;->evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    :goto_1
    return-void
.end method

.method public getPathFragment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken;->rootToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPathTokenAppender()Lcom/jayway/jsonpath/internal/path/PathTokenAppender;
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/RootPathToken$1;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/path/RootPathToken$1;-><init>(Lcom/jayway/jsonpath/internal/path/RootPathToken;)V

    return-object v0
.end method

.method public getTokenCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken;->tokenCount:I

    return v0
.end method

.method public isFunctionPath()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken;->tail:Lcom/jayway/jsonpath/internal/path/PathToken;

    instance-of v0, v0, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;

    return v0
.end method

.method public isTokenDefinite()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
