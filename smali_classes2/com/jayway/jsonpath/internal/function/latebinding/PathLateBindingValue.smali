.class public Lcom/jayway/jsonpath/internal/function/latebinding/PathLateBindingValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/internal/function/latebinding/ILateBindingValue;


# instance fields
.field private final configuration:Lcom/jayway/jsonpath/Configuration;

.field private final path:Lcom/jayway/jsonpath/internal/Path;

.field private final rootDocument:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/jayway/jsonpath/internal/Path;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/latebinding/PathLateBindingValue;->path:Lcom/jayway/jsonpath/internal/Path;

    .line 3
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/function/latebinding/PathLateBindingValue;->rootDocument:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/jayway/jsonpath/internal/function/latebinding/PathLateBindingValue;->configuration:Lcom/jayway/jsonpath/Configuration;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/function/latebinding/PathLateBindingValue;->path:Lcom/jayway/jsonpath/internal/Path;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/function/latebinding/PathLateBindingValue;->rootDocument:Ljava/lang/Object;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/function/latebinding/PathLateBindingValue;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-interface {v0, v1, v1, v2}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/EvaluationContext;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
