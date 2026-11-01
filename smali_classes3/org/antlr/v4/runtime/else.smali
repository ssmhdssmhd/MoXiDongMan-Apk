.class public Lorg/antlr/v4/runtime/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/ANTLRErrorStrategy;


# instance fields
.field public do:Z

.field public for:Landroid/support/v4/sn0;

.field public if:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/antlr/v4/runtime/else;->do:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/antlr/v4/runtime/else;->if:I

    return-void
.end method


# virtual methods
.method public break(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "<no token>"

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->goto(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->this(Lorg/antlr/v4/runtime/Token;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "<EOF>"

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->this(Lorg/antlr/v4/runtime/Token;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/else;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public case(Lorg/antlr/v4/runtime/goto;)Landroid/support/v4/sn0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->g()Landroid/support/v4/sn0;

    move-result-object p1

    return-object p1
.end method

.method public catch(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/ea0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->class()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {v1}, Landroid/support/v4/vo1;->try()I

    move-result v1

    aget-object v0, v0, v1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Landroid/support/v4/ql1;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lorg/antlr/v4/runtime/goto;->A(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Landroid/support/v4/ql1;)V

    return-void
.end method

.method public class(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/xm0;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mismatched input "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/support/v4/ql1;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/else;->break(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/support/v4/ql1;->getExpectedTokens()Landroid/support/v4/sn0;

    move-result-object v1

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->native()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/sn0;->default(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Landroid/support/v4/ql1;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lorg/antlr/v4/runtime/goto;->A(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Landroid/support/v4/ql1;)V

    return-void
.end method

.method public const(Lorg/antlr/v4/runtime/goto;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/goto;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->do(Lorg/antlr/v4/runtime/goto;)V

    .line 3
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->d()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->case(Lorg/antlr/v4/runtime/goto;)Landroid/support/v4/sn0;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->native()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/sn0;->default(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/else;->break(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Lorg/antlr/v4/runtime/goto;->A(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Landroid/support/v4/ql1;)V

    return-void
.end method

.method public do(Lorg/antlr/v4/runtime/goto;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/else;->do:Z

    return-void
.end method

.method public else(Lorg/antlr/v4/runtime/goto;)Lorg/antlr/v4/runtime/Token;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->d()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->case(Lorg/antlr/v4/runtime/goto;)Landroid/support/v4/sn0;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/support/v4/sn0;->isNil()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/support/v4/sn0;->const()I

    move-result v1

    move v4, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v1, -0x1

    if-ne v4, v1, :cond_1

    const-string v2, "<missing EOF>"

    goto :goto_1

    .line 5
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<missing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->native()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v3

    invoke-interface {v3, v4}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v5, v2

    .line 6
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    .line 7
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    if-ne v3, v1, :cond_2

    if-eqz v2, :cond_2

    move-object v0, v2

    .line 8
    :cond_2
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;

    move-result-object v2

    new-instance v3, Landroid/support/v4/ob1;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object p1

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/TokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v1

    invoke-direct {v3, p1, v1}, Landroid/support/v4/ob1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v9

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v10

    invoke-interface/range {v2 .. v10}, Lorg/antlr/v4/runtime/TokenFactory;->create(Landroid/support/v4/ob1;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    return-object p1
.end method

.method public final(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/v31;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/support/v4/v31;->getStartToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, "<EOF>"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/v31;->getStartToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v4/ql1;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->getText(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "<unknown input>"

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no viable alternative at input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/else;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Landroid/support/v4/ql1;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lorg/antlr/v4/runtime/goto;->A(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Landroid/support/v4/ql1;)V

    return-void
.end method

.method public for(Lorg/antlr/v4/runtime/goto;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/else;->do:Z

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/antlr/v4/runtime/else;->for:Landroid/support/v4/sn0;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lorg/antlr/v4/runtime/else;->if:I

    return-void
.end method

.method public goto(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public if(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/sn0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->continue()Lorg/antlr/v4/runtime/Token;

    .line 4
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public inErrorRecoveryMode(Lorg/antlr/v4/runtime/goto;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lorg/antlr/v4/runtime/else;->do:Z

    return p1
.end method

.method public new(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\n"

    const-string v1, "\\n"

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r"

    const-string v1, "\\r"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\t"

    const-string v1, "\\t"

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public recover(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/ql1;)V
    .locals 1

    .line 1
    iget p2, p0, Lorg/antlr/v4/runtime/else;->if:I

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/antlr/v4/runtime/else;->for:Landroid/support/v4/sn0;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->final()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/sn0;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->continue()Lorg/antlr/v4/runtime/Token;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object p2

    invoke-interface {p2}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result p2

    iput p2, p0, Lorg/antlr/v4/runtime/else;->if:I

    .line 4
    iget-object p2, p0, Lorg/antlr/v4/runtime/else;->for:Landroid/support/v4/sn0;

    if-nez p2, :cond_1

    new-instance p2, Landroid/support/v4/sn0;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p2, v0}, Landroid/support/v4/sn0;-><init>([I)V

    iput-object p2, p0, Lorg/antlr/v4/runtime/else;->for:Landroid/support/v4/sn0;

    .line 5
    :cond_1
    iget-object p2, p0, Lorg/antlr/v4/runtime/else;->for:Landroid/support/v4/sn0;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->final()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/sn0;->add(I)V

    .line 6
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->try(Lorg/antlr/v4/runtime/goto;)Landroid/support/v4/sn0;

    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/else;->if(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/sn0;)V

    return-void
.end method

.method public recoverInline(Lorg/antlr/v4/runtime/goto;)Lorg/antlr/v4/runtime/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ql1;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->throw(Lorg/antlr/v4/runtime/goto;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->continue()Lorg/antlr/v4/runtime/Token;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->while(Lorg/antlr/v4/runtime/goto;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->else(Lorg/antlr/v4/runtime/goto;)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Landroid/support/v4/xm0;

    invoke-direct {v0, p1}, Landroid/support/v4/xm0;-><init>(Lorg/antlr/v4/runtime/goto;)V

    throw v0
.end method

.method public reportError(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/ql1;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/goto;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->do(Lorg/antlr/v4/runtime/goto;)V

    .line 3
    instance-of v0, p2, Landroid/support/v4/v31;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Landroid/support/v4/v31;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/else;->final(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/v31;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p2, Landroid/support/v4/xm0;

    if-eqz v0, :cond_2

    .line 6
    check-cast p2, Landroid/support/v4/xm0;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/else;->class(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/xm0;)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, p2, Landroid/support/v4/ea0;

    if-eqz v0, :cond_3

    .line 8
    check-cast p2, Landroid/support/v4/ea0;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/else;->catch(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/ea0;)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown recognition error type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Landroid/support/v4/ql1;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Lorg/antlr/v4/runtime/goto;->A(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Landroid/support/v4/ql1;)V

    :goto_0
    return-void
.end method

.method public reportMatch(Lorg/antlr/v4/runtime/goto;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->for(Lorg/antlr/v4/runtime/goto;)V

    return-void
.end method

.method public reset(Lorg/antlr/v4/runtime/goto;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->for(Lorg/antlr/v4/runtime/goto;)V

    return-void
.end method

.method public super(Lorg/antlr/v4/runtime/goto;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/goto;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->do(Lorg/antlr/v4/runtime/goto;)V

    .line 3
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->d()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/else;->break(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->case(Lorg/antlr/v4/runtime/goto;)Landroid/support/v4/sn0;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extraneous input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expecting "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->native()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/sn0;->default(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lorg/antlr/v4/runtime/goto;->A(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Landroid/support/v4/ql1;)V

    return-void
.end method

.method public sync(Lorg/antlr/v4/runtime/goto;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ql1;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/new;

    iget-object v0, v0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget-object v0, v0, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->final()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/finally;

    .line 2
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/goto;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->for()Landroid/support/v4/static;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/static;->case(Landroid/support/v4/finally;)Landroid/support/v4/sn0;

    move-result-object v2

    const/4 v3, -0x2

    .line 6
    invoke-virtual {v2, v3}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v1}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/finally;->new()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 8
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->super(Lorg/antlr/v4/runtime/goto;)V

    .line 9
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->g()Landroid/support/v4/sn0;

    move-result-object v0

    .line 10
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->try(Lorg/antlr/v4/runtime/goto;)Landroid/support/v4/sn0;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/sn0;->while(Lorg/antlr/v4/runtime/misc/IntSet;)Landroid/support/v4/sn0;

    move-result-object v0

    .line 11
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/else;->if(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/sn0;)V

    :goto_0
    return-void

    .line 12
    :cond_2
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->throw(Lorg/antlr/v4/runtime/goto;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    .line 13
    :cond_3
    new-instance v0, Landroid/support/v4/xm0;

    invoke-direct {v0, p1}, Landroid/support/v4/xm0;-><init>(Lorg/antlr/v4/runtime/goto;)V

    throw v0

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public this(Lorg/antlr/v4/runtime/Token;)I
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result p1

    return p1
.end method

.method public throw(Lorg/antlr/v4/runtime/goto;)Lorg/antlr/v4/runtime/Token;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->case(Lorg/antlr/v4/runtime/goto;)Landroid/support/v4/sn0;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->super(Lorg/antlr/v4/runtime/goto;)V

    .line 5
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->continue()Lorg/antlr/v4/runtime/Token;

    .line 6
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->d()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 7
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->reportMatch(Lorg/antlr/v4/runtime/goto;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public try(Lorg/antlr/v4/runtime/goto;)Landroid/support/v4/sn0;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/new;

    iget-object v0, v0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    .line 2
    iget-object p1, p1, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    .line 3
    new-instance v1, Landroid/support/v4/sn0;

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-direct {v1, v3}, Landroid/support/v4/sn0;-><init>([I)V

    :goto_0
    if-eqz p1, :cond_0

    .line 4
    iget v3, p1, Landroid/support/v4/vo1;->if:I

    if-ltz v3, :cond_0

    .line 5
    iget-object v4, v0, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/finally;

    .line 6
    invoke-virtual {v3, v2}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v3

    check-cast v3, Landroid/support/v4/ap1;

    .line 7
    iget-object v3, v3, Landroid/support/v4/ap1;->throw:Landroid/support/v4/finally;

    invoke-virtual {v0, v3}, Landroid/support/v4/static;->case(Landroid/support/v4/finally;)Landroid/support/v4/sn0;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v3}, Landroid/support/v4/sn0;->for(Lorg/antlr/v4/runtime/misc/IntSet;)Landroid/support/v4/sn0;

    .line 9
    iget-object p1, p1, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 10
    invoke-virtual {v1, p1}, Landroid/support/v4/sn0;->remove(I)V

    return-object v1
.end method

.method public while(Lorg/antlr/v4/runtime/goto;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/new;

    iget-object v2, v2, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget-object v2, v2, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->final()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/finally;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v2, v3}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v2

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    .line 4
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/atn/new;

    iget-object v4, v4, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    .line 5
    iget-object v5, p1, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {v4, v2, v5}, Landroid/support/v4/static;->else(Landroid/support/v4/finally;Landroid/support/v4/vo1;)Landroid/support/v4/sn0;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v0}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/else;->const(Lorg/antlr/v4/runtime/goto;)V

    return v1

    :cond_0
    return v3
.end method
