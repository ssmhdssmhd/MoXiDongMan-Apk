.class final Lcom/jayway/jsonpath/internal/path/ScanPathToken$ArrayPathTokenPredicate;
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
    name = "ArrayPathTokenPredicate"
.end annotation


# instance fields
.field private final ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;


# direct methods
.method private constructor <init>(Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$ArrayPathTokenPredicate;->ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/path/ScanPathToken$ArrayPathTokenPredicate;-><init>(Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$ArrayPathTokenPredicate;->ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
