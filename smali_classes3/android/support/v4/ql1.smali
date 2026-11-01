.class public Landroid/support/v4/ql1;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final ctx:Landroid/support/v4/vo1;

.field private final input:Lorg/antlr/v4/runtime/IntStream;

.field private offendingState:I

.field private offendingToken:Lorg/antlr/v4/runtime/Token;

.field private final recognizer:Lorg/antlr/v4/runtime/this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/this<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/antlr/v4/runtime/this;Lorg/antlr/v4/runtime/IntStream;Landroid/support/v4/qc1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/this<",
            "**>;",
            "Lorg/antlr/v4/runtime/IntStream;",
            "Landroid/support/v4/qc1;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroid/support/v4/ql1;->offendingState:I

    .line 9
    iput-object p2, p0, Landroid/support/v4/ql1;->recognizer:Lorg/antlr/v4/runtime/this;

    .line 10
    iput-object p3, p0, Landroid/support/v4/ql1;->input:Lorg/antlr/v4/runtime/IntStream;

    .line 11
    iput-object p4, p0, Landroid/support/v4/ql1;->ctx:Landroid/support/v4/vo1;

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/this;->final()I

    move-result p1

    iput p1, p0, Landroid/support/v4/ql1;->offendingState:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/this;Lorg/antlr/v4/runtime/IntStream;Landroid/support/v4/qc1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/this<",
            "**>;",
            "Lorg/antlr/v4/runtime/IntStream;",
            "Landroid/support/v4/qc1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/support/v4/ql1;->offendingState:I

    .line 3
    iput-object p1, p0, Landroid/support/v4/ql1;->recognizer:Lorg/antlr/v4/runtime/this;

    .line 4
    iput-object p2, p0, Landroid/support/v4/ql1;->input:Lorg/antlr/v4/runtime/IntStream;

    .line 5
    iput-object p3, p0, Landroid/support/v4/ql1;->ctx:Landroid/support/v4/vo1;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->final()I

    move-result p1

    iput p1, p0, Landroid/support/v4/ql1;->offendingState:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getCtx()Landroid/support/v4/vo1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql1;->ctx:Landroid/support/v4/vo1;

    return-object v0
.end method

.method public getExpectedTokens()Landroid/support/v4/sn0;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql1;->recognizer:Lorg/antlr/v4/runtime/this;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/this;->for()Landroid/support/v4/static;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/ql1;->offendingState:I

    iget-object v2, p0, Landroid/support/v4/ql1;->ctx:Landroid/support/v4/vo1;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/static;->new(ILandroid/support/v4/vo1;)Landroid/support/v4/sn0;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/IntStream;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql1;->input:Lorg/antlr/v4/runtime/IntStream;

    return-object v0
.end method

.method public getOffendingState()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ql1;->offendingState:I

    return v0
.end method

.method public getOffendingToken()Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql1;->offendingToken:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public getRecognizer()Lorg/antlr/v4/runtime/this;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/this<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql1;->recognizer:Lorg/antlr/v4/runtime/this;

    return-object v0
.end method

.method public final setOffendingState(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/ql1;->offendingState:I

    return-void
.end method

.method public final setOffendingToken(Lorg/antlr/v4/runtime/Token;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/ql1;->offendingToken:Lorg/antlr/v4/runtime/Token;

    return-void
.end method
