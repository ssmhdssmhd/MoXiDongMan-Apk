.class public Lcom/jayway/jsonpath/internal/path/FunctionPathToken;
.super Lcom/jayway/jsonpath/internal/path/PathToken;
.source "SourceFile"


# instance fields
.field private final functionName:Ljava/lang/String;

.field private final functionParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jayway/jsonpath/internal/function/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private final pathFragment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jayway/jsonpath/internal/function/Parameter;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "(...)"

    goto :goto_0

    :cond_0
    const-string v1, "()"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;->pathFragment:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;->functionName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;->functionParams:Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;->functionName:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;->functionParams:Ljava/util/List;

    :goto_1
    return-void
.end method

.method private evaluateParameters(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;->functionParams:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jayway/jsonpath/internal/function/Parameter;

    .line 3
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/function/Parameter;->hasEvaluated()Z

    move-result p3

    if-nez p3, :cond_0

    .line 4
    sget-object p3, Lcom/jayway/jsonpath/internal/path/FunctionPathToken$1;->$SwitchMap$com$jayway$jsonpath$internal$function$ParamType:[I

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/function/Parameter;->getType()Lcom/jayway/jsonpath/internal/function/ParamType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p3, Lcom/jayway/jsonpath/internal/function/latebinding/JsonLateBindingValue;

    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lcom/jayway/jsonpath/internal/function/latebinding/JsonLateBindingValue;-><init>(Lcom/jayway/jsonpath/spi/json/JsonProvider;Lcom/jayway/jsonpath/internal/function/Parameter;)V

    invoke-virtual {p2, p3}, Lcom/jayway/jsonpath/internal/function/Parameter;->setLateBinding(Lcom/jayway/jsonpath/internal/function/latebinding/ILateBindingValue;)V

    .line 6
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lcom/jayway/jsonpath/internal/function/Parameter;->setEvaluated(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p3, Lcom/jayway/jsonpath/internal/function/latebinding/PathLateBindingValue;

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/function/Parameter;->getPath()Lcom/jayway/jsonpath/internal/Path;

    move-result-object v0

    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->rootDocument()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v2

    invoke-direct {p3, v0, v1, v2}, Lcom/jayway/jsonpath/internal/function/latebinding/PathLateBindingValue;-><init>(Lcom/jayway/jsonpath/internal/Path;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V

    invoke-virtual {p2, p3}, Lcom/jayway/jsonpath/internal/function/Parameter;->setLateBinding(Lcom/jayway/jsonpath/internal/function/latebinding/ILateBindingValue;)V

    .line 8
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lcom/jayway/jsonpath/internal/function/Parameter;->setEvaluated(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;->functionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/jayway/jsonpath/internal/function/PathFunctionFactory;->newFunction(Ljava/lang/String;)Lcom/jayway/jsonpath/internal/function/PathFunction;

    move-result-object v1

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;->evaluateParameters(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    .line 3
    iget-object v6, p0, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;->functionParams:Ljava/util/List;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/jayway/jsonpath/internal/function/PathFunction;->invoke(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/EvaluationContext;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;->functionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, p2, p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->addResult(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->next()Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jayway/jsonpath/internal/path/PathToken;->evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    :cond_0
    return-void
.end method

.method public getPathFragment()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;->pathFragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTokenDefinite()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
