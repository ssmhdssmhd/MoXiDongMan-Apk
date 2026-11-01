.class Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$FoundResultImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/EvaluationListener$FoundResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FoundResultImpl"
.end annotation


# instance fields
.field private final index:I

.field private final path:Ljava/lang/String;

.field private final result:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$FoundResultImpl;->index:I

    .line 4
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$FoundResultImpl;->path:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$FoundResultImpl;->result:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$FoundResultImpl;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public index()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$FoundResultImpl;->index:I

    return v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$FoundResultImpl;->path:Ljava/lang/String;

    return-object v0
.end method

.method public result()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$FoundResultImpl;->result:Ljava/lang/Object;

    return-object v0
.end method
