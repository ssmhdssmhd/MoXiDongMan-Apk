.class public Landroid/support/v4/pc1;
.super Lorg/antlr/v4/runtime/goto;
.source "SourceFile"


# instance fields
.field public abstract:Landroid/support/v4/qn0;

.field public default:I

.field public extends:I

.field public finally:I

.field public final import:Landroid/support/v4/static;

.field public final native:[Lorg/antlr/v4/runtime/dfa/do;

.field public package:Z

.field public private:Landroid/support/v4/qn0;

.field public final public:Landroid/support/v4/ef1;

.field public final return:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final static:[Ljava/lang/String;

.field private final switch:Lorg/antlr/v4/runtime/Vocabulary;

.field public final throws:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/support/v4/ob1<",
            "Landroid/support/v4/qc1;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final while:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Landroid/support/v4/static;Lorg/antlr/v4/runtime/TokenStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/static;",
            "Lorg/antlr/v4/runtime/TokenStream;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Landroid/support/v4/cf2;->do([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/pc1;-><init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Landroid/support/v4/static;Lorg/antlr/v4/runtime/TokenStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Landroid/support/v4/static;Lorg/antlr/v4/runtime/TokenStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/Vocabulary;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/static;",
            "Lorg/antlr/v4/runtime/TokenStream;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p5}, Lorg/antlr/v4/runtime/goto;-><init>(Lorg/antlr/v4/runtime/TokenStream;)V

    .line 3
    new-instance p5, Landroid/support/v4/ef1;

    invoke-direct {p5}, Landroid/support/v4/ef1;-><init>()V

    iput-object p5, p0, Landroid/support/v4/pc1;->public:Landroid/support/v4/ef1;

    .line 4
    new-instance p5, Ljava/util/ArrayDeque;

    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Landroid/support/v4/pc1;->throws:Ljava/util/Deque;

    const/4 p5, -0x1

    .line 5
    iput p5, p0, Landroid/support/v4/pc1;->default:I

    .line 6
    iput p5, p0, Landroid/support/v4/pc1;->extends:I

    .line 7
    iput p5, p0, Landroid/support/v4/pc1;->finally:I

    const/4 p5, 0x0

    .line 8
    iput-boolean p5, p0, Landroid/support/v4/pc1;->package:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/support/v4/pc1;->private:Landroid/support/v4/qn0;

    .line 10
    iput-object p1, p0, Landroid/support/v4/pc1;->while:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Landroid/support/v4/pc1;->import:Landroid/support/v4/static;

    .line 12
    iget p1, p4, Landroid/support/v4/static;->else:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/support/v4/pc1;->return:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-object v0, p0, Landroid/support/v4/pc1;->return:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 14
    invoke-interface {p2, p1}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/support/v4/pc1;->static:[Ljava/lang/String;

    .line 16
    iput-object p2, p0, Landroid/support/v4/pc1;->switch:Lorg/antlr/v4/runtime/Vocabulary;

    .line 17
    invoke-virtual {p4}, Landroid/support/v4/static;->try()I

    move-result p1

    .line 18
    new-array p2, p1, [Lorg/antlr/v4/runtime/dfa/do;

    iput-object p2, p0, Landroid/support/v4/pc1;->native:[Lorg/antlr/v4/runtime/dfa/do;

    :goto_1
    if-ge p5, p1, :cond_1

    .line 19
    invoke-virtual {p4, p5}, Landroid/support/v4/static;->for(I)Landroid/support/v4/jx;

    move-result-object p2

    .line 20
    iget-object p3, p0, Landroid/support/v4/pc1;->native:[Lorg/antlr/v4/runtime/dfa/do;

    new-instance v0, Lorg/antlr/v4/runtime/dfa/do;

    invoke-direct {v0, p2, p5}, Lorg/antlr/v4/runtime/dfa/do;-><init>(Landroid/support/v4/jx;I)V

    aput-object v0, p3, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 21
    :cond_1
    new-instance p1, Lorg/antlr/v4/runtime/atn/new;

    iget-object p2, p0, Landroid/support/v4/pc1;->native:[Lorg/antlr/v4/runtime/dfa/do;

    iget-object p3, p0, Landroid/support/v4/pc1;->public:Landroid/support/v4/ef1;

    invoke-direct {p1, p0, p4, p2, p3}, Lorg/antlr/v4/runtime/atn/new;-><init>(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/static;[Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/ef1;)V

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/this;->default(Landroid/support/v4/extends;)V

    return-void
.end method


# virtual methods
.method public E()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/antlr/v4/runtime/goto;->E()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/pc1;->package:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/support/v4/pc1;->private:Landroid/support/v4/qn0;

    return-void
.end method

.method public P(III)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/pc1;->default:I

    .line 2
    iput p2, p0, Landroid/support/v4/pc1;->extends:I

    .line 3
    iput p3, p0, Landroid/support/v4/pc1;->finally:I

    return-void
.end method

.method public Q(Landroid/support/v4/qc1;II)Landroid/support/v4/qn0;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/qn0;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/qn0;-><init>(Landroid/support/v4/qc1;II)V

    return-object v0
.end method

.method public R()Landroid/support/v4/finally;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/pc1;->import:Landroid/support/v4/static;

    iget-object v0, v0, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->final()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/finally;

    return-object v0
.end method

.method public S()Landroid/support/v4/qn0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/pc1;->private:Landroid/support/v4/qn0;

    return-object v0
.end method

.method public T()Landroid/support/v4/qn0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/pc1;->abstract:Landroid/support/v4/qn0;

    return-object v0
.end method

.method public U(I)Landroid/support/v4/qc1;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/pc1;->import:Landroid/support/v4/static;

    iget-object v0, v0, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 2
    invoke-virtual {p0, v1, v2, p1}, Landroid/support/v4/pc1;->Q(Landroid/support/v4/qc1;II)Landroid/support/v4/qn0;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/pc1;->abstract:Landroid/support/v4/qn0;

    .line 3
    iget-boolean v2, v0, Landroid/support/v4/xo1;->throws:Z

    if-eqz v2, :cond_0

    .line 4
    iget v2, v0, Landroid/support/v4/finally;->if:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p1, v3}, Landroid/support/v4/pc1;->implements(Landroid/support/v4/qc1;III)V

    goto :goto_0

    .line 5
    :cond_0
    iget v2, v0, Landroid/support/v4/finally;->if:I

    invoke-virtual {p0, v1, v2, p1}, Lorg/antlr/v4/runtime/goto;->instanceof(Landroid/support/v4/qc1;II)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/pc1;->R()Landroid/support/v4/finally;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/support/v4/finally;->new()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/v4/pc1;->Z(Landroid/support/v4/finally;)V
    :try_end_0
    .catch Landroid/support/v4/ql1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    iget-object v2, p0, Landroid/support/v4/pc1;->import:Landroid/support/v4/static;

    iget-object v2, v2, Landroid/support/v4/static;->new:[Landroid/support/v4/yo1;

    iget p1, p1, Landroid/support/v4/finally;->for:I

    aget-object p1, v2, p1

    iget p1, p1, Landroid/support/v4/finally;->if:I

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/this;->extends(I)V

    .line 10
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->c()Landroid/support/v4/qc1;

    move-result-object p1

    iput-object v1, p1, Landroid/support/v4/qc1;->else:Landroid/support/v4/ql1;

    .line 11
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->f()Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->reportError(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/ql1;)V

    .line 12
    invoke-virtual {p0, v1}, Landroid/support/v4/pc1;->V(Landroid/support/v4/ql1;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {v1}, Landroid/support/v4/vo1;->case()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-boolean p1, v0, Landroid/support/v4/xo1;->throws:Z

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    .line 16
    iget-object v0, p0, Landroid/support/v4/pc1;->throws:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ob1;

    .line 17
    iget-object v0, v0, Landroid/support/v4/ob1;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/qc1;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/goto;->O(Landroid/support/v4/qc1;)V

    return-object p1

    .line 18
    :cond_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->synchronized()V

    .line 19
    iget-object p1, p0, Landroid/support/v4/pc1;->abstract:Landroid/support/v4/qn0;

    return-object p1

    .line 20
    :cond_3
    invoke-virtual {p0, p1}, Landroid/support/v4/pc1;->Y(Landroid/support/v4/finally;)V

    goto :goto_0
.end method

.method public V(Landroid/support/v4/ql1;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->f()Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->recover(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/ql1;)V

    .line 3
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 4
    instance-of v0, p1, Landroid/support/v4/xm0;

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p1

    check-cast v0, Landroid/support/v4/xm0;

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/ql1;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0}, Landroid/support/v4/ql1;->getExpectedTokens()Landroid/support/v4/sn0;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/sn0;->isNil()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/support/v4/ql1;->getExpectedTokens()Landroid/support/v4/sn0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/sn0;->const()I

    move-result v1

    move v4, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;

    move-result-object v2

    new-instance v3, Landroid/support/v4/ob1;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v0

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/TokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroid/support/v4/ob1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v9

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v10

    invoke-interface/range {v2 .. v10}, Lorg/antlr/v4/runtime/TokenFactory;->create(Landroid/support/v4/ob1;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {p0, v0, p1}, Lorg/antlr/v4/runtime/goto;->strictfp(Landroid/support/v4/qc1;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/qc1;->import(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/ql1;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;

    move-result-object v0

    new-instance v1, Landroid/support/v4/ob1;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v2

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v3

    invoke-interface {v3}, Lorg/antlr/v4/runtime/TokenSource;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/ob1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v7

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v8

    invoke-interface/range {v0 .. v8}, Lorg/antlr/v4/runtime/TokenFactory;->create(Landroid/support/v4/ob1;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {p0, v0, p1}, Lorg/antlr/v4/runtime/goto;->strictfp(Landroid/support/v4/qc1;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/qc1;->import(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    :cond_2
    :goto_1
    return-void
.end method

.method public W()Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->else:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v0, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->recoverInline(Lorg/antlr/v4/runtime/goto;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    return-object v0
.end method

.method public X(Landroid/support/v4/jx;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/finally;->for()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->f()Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->sync(Lorg/antlr/v4/runtime/goto;)V

    .line 3
    iget p1, p1, Landroid/support/v4/jx;->switch:I

    .line 4
    iget v0, p0, Landroid/support/v4/pc1;->default:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v0

    iget v2, p0, Landroid/support/v4/pc1;->extends:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/pc1;->package:Z

    if-nez v0, :cond_0

    .line 5
    iget p1, p0, Landroid/support/v4/pc1;->finally:I

    .line 6
    iput-boolean v1, p0, Landroid/support/v4/pc1;->package:Z

    move v1, p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/new;

    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    iget-object v2, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {v0, v1, p1, v2}, Lorg/antlr/v4/runtime/atn/new;->super(Lorg/antlr/v4/runtime/TokenStream;ILandroid/support/v4/qc1;)I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public Y(Landroid/support/v4/finally;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/pc1;->import:Landroid/support/v4/static;

    iget-object v0, v0, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    iget p1, p1, Landroid/support/v4/finally;->for:I

    aget-object p1, v0, p1

    .line 2
    iget-boolean p1, p1, Landroid/support/v4/xo1;->throws:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/support/v4/pc1;->throws:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/ob1;

    .line 4
    iget-object v0, p1, Landroid/support/v4/ob1;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/qc1;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/goto;->O(Landroid/support/v4/qc1;)V

    .line 5
    iget-object p1, p1, Landroid/support/v4/ob1;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/this;->extends(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->synchronized()V

    .line 7
    :goto_0
    iget-object p1, p0, Landroid/support/v4/pc1;->import:Landroid/support/v4/static;

    iget-object p1, p1, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->final()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/finally;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object p1

    check-cast p1, Landroid/support/v4/ap1;

    .line 8
    iget-object p1, p1, Landroid/support/v4/ap1;->throw:Landroid/support/v4/finally;

    iget p1, p1, Landroid/support/v4/finally;->if:I

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/this;->extends(I)V

    return-void
.end method

.method public Z(Landroid/support/v4/finally;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/support/v4/jx;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/support/v4/jx;

    invoke-virtual {p0, v0}, Landroid/support/v4/pc1;->X(Landroid/support/v4/jx;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/catch;->do()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unrecognized ATN transition type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :pswitch_0
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    move-object v2, v0

    check-cast v2, Lorg/antlr/v4/runtime/atn/try;

    iget v3, v2, Lorg/antlr/v4/runtime/atn/try;->final:I

    invoke-virtual {p0, p1, v3}, Lorg/antlr/v4/runtime/goto;->public(Landroid/support/v4/vo1;I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    .line 7
    :cond_1
    new-instance p1, Landroid/support/v4/ea0;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, v2, Lorg/antlr/v4/runtime/atn/try;->final:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "precpred(_ctx, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/support/v4/ea0;-><init>(Lorg/antlr/v4/runtime/goto;Ljava/lang/String;)V

    throw p1

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->y()Lorg/antlr/v4/runtime/Token;

    goto/16 :goto_1

    .line 9
    :pswitch_2
    move-object p1, v0

    check-cast p1, Landroid/support/v4/u;

    .line 10
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    iget v2, p1, Landroid/support/v4/u;->final:I

    iget p1, p1, Landroid/support/v4/u;->super:I

    invoke-virtual {p0, v1, v2, p1}, Lorg/antlr/v4/runtime/this;->do(Landroid/support/v4/vo1;II)V

    goto/16 :goto_1

    .line 11
    :pswitch_3
    move-object p1, v0

    check-cast p1, Landroid/support/v4/g4;

    iget p1, p1, Landroid/support/v4/g4;->final:I

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/goto;->x(I)Lorg/antlr/v4/runtime/Token;

    goto/16 :goto_1

    .line 12
    :pswitch_4
    move-object p1, v0

    check-cast p1, Lorg/antlr/v4/runtime/atn/case;

    .line 13
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    iget v2, p1, Lorg/antlr/v4/runtime/atn/case;->final:I

    iget p1, p1, Lorg/antlr/v4/runtime/atn/case;->super:I

    invoke-virtual {p0, v1, v2, p1}, Lorg/antlr/v4/runtime/this;->switch(Landroid/support/v4/vo1;II)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_1

    .line 14
    :cond_2
    new-instance p1, Landroid/support/v4/ea0;

    invoke-direct {p1, p0}, Landroid/support/v4/ea0;-><init>(Lorg/antlr/v4/runtime/goto;)V

    throw p1

    .line 15
    :pswitch_5
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    check-cast v1, Landroid/support/v4/xo1;

    .line 16
    iget v2, v1, Landroid/support/v4/finally;->for:I

    .line 17
    iget-object v3, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    iget p1, p1, Landroid/support/v4/finally;->if:I

    invoke-virtual {p0, v3, p1, v2}, Landroid/support/v4/pc1;->Q(Landroid/support/v4/qc1;II)Landroid/support/v4/qn0;

    move-result-object p1

    .line 18
    iget-boolean v3, v1, Landroid/support/v4/xo1;->throws:Z

    if-eqz v3, :cond_3

    .line 19
    iget v1, v1, Landroid/support/v4/finally;->if:I

    move-object v3, v0

    check-cast v3, Landroid/support/v4/ap1;

    iget v3, v3, Landroid/support/v4/ap1;->super:I

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/support/v4/pc1;->implements(Landroid/support/v4/qc1;III)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    iget v1, v1, Landroid/support/v4/finally;->if:I

    invoke-virtual {p0, p1, v1, v2}, Lorg/antlr/v4/runtime/goto;->instanceof(Landroid/support/v4/qc1;II)V

    goto :goto_1

    .line 21
    :pswitch_6
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p1, v1}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result p1

    const v2, 0xffff

    invoke-virtual {v0, p1, v1, v2}, Lorg/antlr/v4/runtime/atn/catch;->new(III)Z

    move-result p1

    if-nez p1, :cond_4

    .line 22
    invoke-virtual {p0}, Landroid/support/v4/pc1;->W()Lorg/antlr/v4/runtime/Token;

    .line 23
    :cond_4
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->y()Lorg/antlr/v4/runtime/Token;

    goto :goto_1

    .line 24
    :pswitch_7
    invoke-virtual {p1}, Landroid/support/v4/finally;->new()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    move-object v1, p1

    check-cast v1, Landroid/support/v4/j12;

    iget-boolean v1, v1, Landroid/support/v4/j12;->extends:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    instance-of v1, v1, Landroid/support/v4/fw0;

    if-nez v1, :cond_5

    .line 25
    iget-object v1, p0, Landroid/support/v4/pc1;->throws:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/ob1;

    iget-object v1, v1, Landroid/support/v4/ob1;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/qc1;

    iget-object v2, p0, Landroid/support/v4/pc1;->throws:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/ob1;

    iget-object v2, v2, Landroid/support/v4/ob1;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {v3}, Landroid/support/v4/vo1;->try()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/pc1;->Q(Landroid/support/v4/qc1;II)Landroid/support/v4/qn0;

    move-result-object v1

    .line 26
    iget-object v2, p0, Landroid/support/v4/pc1;->import:Landroid/support/v4/static;

    iget-object v2, v2, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    iget p1, p1, Landroid/support/v4/finally;->for:I

    aget-object p1, v2, p1

    iget p1, p1, Landroid/support/v4/finally;->if:I

    iget-object v2, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {v2}, Landroid/support/v4/vo1;->try()I

    move-result v2

    invoke-virtual {p0, v1, p1, v2}, Lorg/antlr/v4/runtime/goto;->B(Landroid/support/v4/qc1;II)V

    .line 27
    :cond_5
    :goto_1
    iget-object p1, v0, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    iget p1, p1, Landroid/support/v4/finally;->if:I

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/this;->extends(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public class()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/pc1;->static:[Ljava/lang/String;

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/pc1;->while:Ljava/lang/String;

    return-object v0
.end method

.method public for()Landroid/support/v4/static;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/pc1;->import:Landroid/support/v4/static;

    return-object v0
.end method

.method public implements(Landroid/support/v4/qc1;III)V
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/ob1;

    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    iget v2, p1, Landroid/support/v4/vo1;->if:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/ob1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Landroid/support/v4/pc1;->throws:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/antlr/v4/runtime/goto;->implements(Landroid/support/v4/qc1;III)V

    return-void
.end method

.method public native()Lorg/antlr/v4/runtime/Vocabulary;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/pc1;->switch:Lorg/antlr/v4/runtime/Vocabulary;

    return-object v0
.end method

.method public throw()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/pc1;->return:[Ljava/lang/String;

    return-object v0
.end method
