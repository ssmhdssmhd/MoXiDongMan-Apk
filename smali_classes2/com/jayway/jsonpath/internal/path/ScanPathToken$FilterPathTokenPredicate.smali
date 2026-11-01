.class final Lcom/jayway/jsonpath/internal/path/ScanPathToken$FilterPathTokenPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/path/ScanPathToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterPathTokenPredicate"
.end annotation


# instance fields
.field private final ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

.field private predicatePathToken:Lcom/jayway/jsonpath/internal/path/PredicatePathToken;


# direct methods
.method private constructor <init>(Lcom/jayway/jsonpath/internal/path/PathToken;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$FilterPathTokenPredicate;->ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

    .line 4
    check-cast p1, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$FilterPathTokenPredicate;->predicatePathToken:Lcom/jayway/jsonpath/internal/path/PredicatePathToken;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jayway/jsonpath/internal/path/PathToken;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jayway/jsonpath/internal/path/ScanPathToken$FilterPathTokenPredicate;-><init>(Lcom/jayway/jsonpath/internal/path/PathToken;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$FilterPathTokenPredicate;->predicatePathToken:Lcom/jayway/jsonpath/internal/path/PredicatePathToken;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$FilterPathTokenPredicate;->ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->rootDocument()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$FilterPathTokenPredicate;->ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

    invoke-virtual {v2}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v2

    iget-object v3, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$FilterPathTokenPredicate;->ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;->accept(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Z

    move-result p1

    return p1
.end method
