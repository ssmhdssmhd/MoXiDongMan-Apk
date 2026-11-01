.class final Lcom/jayway/jsonpath/internal/JsonContext$LimitingEvaluationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/EvaluationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/JsonContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LimitingEvaluationListener"
.end annotation


# instance fields
.field public final limit:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/jayway/jsonpath/internal/JsonContext$LimitingEvaluationListener;->limit:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/jayway/jsonpath/internal/JsonContext$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/JsonContext$LimitingEvaluationListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public resultFound(Lcom/jayway/jsonpath/EvaluationListener$FoundResult;)Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/jayway/jsonpath/EvaluationListener$FoundResult;->index()I

    move-result p1

    iget v0, p0, Lcom/jayway/jsonpath/internal/JsonContext$LimitingEvaluationListener;->limit:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;->ABORT:Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;->CONTINUE:Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    return-object p1
.end method
