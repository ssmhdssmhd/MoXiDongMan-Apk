.class public Landroid/support/v4/qc1;
.super Landroid/support/v4/vo1;
.source "SourceFile"


# instance fields
.field public case:Lorg/antlr/v4/runtime/Token;

.field public else:Landroid/support/v4/ql1;

.field public new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation
.end field

.field public try:Lorg/antlr/v4/runtime/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/vo1;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/qc1;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/support/v4/vo1;-><init>(Landroid/support/v4/vo1;I)V

    return-void
.end method


# virtual methods
.method public abstract()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public const(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public continue(Lorg/antlr/v4/runtime/goto;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/goto;->q(Landroid/support/v4/vo1;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParserRuleContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "{"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "start="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", stop="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/qc1;->case:Lorg/antlr/v4/runtime/Token;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public default(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/qc1;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method public extends()Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public final(Landroid/support/v4/vo1;)Landroid/support/v4/vo1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/qc1;->const(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    check-cast p1, Landroid/support/v4/vo1;

    return-object p1
.end method

.method public finally()Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/qc1;->case:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public bridge synthetic for()Landroid/support/v4/vo1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/qc1;->switch()Landroid/support/v4/qc1;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ParseTree;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getChild(I)Lorg/antlr/v4/runtime/tree/Tree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/qc1;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/qc1;->switch()Landroid/support/v4/qc1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/Tree;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/qc1;->switch()Landroid/support/v4/qc1;

    move-result-object v0

    return-object v0
.end method

.method public getSourceInterval()Landroid/support/v4/rn0;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/rn0;->new:Landroid/support/v4/rn0;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/qc1;->case:Lorg/antlr/v4/runtime/Token;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/qc1;->case:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object v0

    return-object v0
.end method

.method public import(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTree;->setParent(Landroid/support/v4/vo1;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/qc1;->const(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ErrorNode;

    return-object p1
.end method

.method public native(Landroid/support/v4/qc1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    iput-object v0, p0, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    .line 2
    iget v0, p1, Landroid/support/v4/vo1;->if:I

    iput v0, p0, Landroid/support/v4/vo1;->if:I

    .line 3
    iget-object v0, p1, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    iput-object v0, p0, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    .line 4
    iget-object v0, p1, Landroid/support/v4/qc1;->case:Lorg/antlr/v4/runtime/Token;

    iput-object v0, p0, Landroid/support/v4/qc1;->case:Lorg/antlr/v4/runtime/Token;

    .line 5
    iget-object v0, p1, Landroid/support/v4/qc1;->new:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    .line 7
    iget-object p1, p1, Landroid/support/v4/qc1;->new:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 8
    instance-of v1, v0, Lorg/antlr/v4/runtime/tree/ErrorNode;

    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lorg/antlr/v4/runtime/tree/ErrorNode;

    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->throw(Lorg/antlr/v4/runtime/tree/TerminalNode;)Lorg/antlr/v4/runtime/tree/TerminalNode;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public package(II)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ltz p2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2
    iget-object v2, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 3
    instance-of v4, v3, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v4, :cond_1

    .line 4
    check-cast v3, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 5
    invoke-interface {v3}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v4

    .line 6
    invoke-interface {v4}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_1

    return-object v3

    :cond_2
    :goto_0
    return-object v1
.end method

.method public private(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 4
    instance-of v3, v2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 6
    invoke-interface {v2}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v3

    if-ne v3, p1, :cond_1

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method public public(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 0

    return-void
.end method

.method public return(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 0

    return-void
.end method

.method public static(Ljava/lang/Class;I)Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ltz p2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2
    iget-object v2, p0, Landroid/support/v4/qc1;->new:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_1

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/ParseTree;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public super(Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/t52;

    invoke-direct {v0, p1}, Landroid/support/v4/t52;-><init>(Lorg/antlr/v4/runtime/Token;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->const(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 3
    invoke-virtual {v0, p0}, Landroid/support/v4/t52;->setParent(Landroid/support/v4/vo1;)V

    return-object v0
.end method

.method public switch()Landroid/support/v4/qc1;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/vo1;->for()Landroid/support/v4/vo1;

    move-result-object v0

    check-cast v0, Landroid/support/v4/qc1;

    return-object v0
.end method

.method public throw(Lorg/antlr/v4/runtime/tree/TerminalNode;)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTree;->setParent(Landroid/support/v4/vo1;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/qc1;->const(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/tree/TerminalNode;

    return-object p1
.end method

.method public throws(Ljava/lang/Class;I)Landroid/support/v4/qc1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/qc1;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/qc1;->static(Ljava/lang/Class;I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    check-cast p1, Landroid/support/v4/qc1;

    return-object p1
.end method

.method public while(Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/k80;

    invoke-direct {v0, p1}, Landroid/support/v4/k80;-><init>(Lorg/antlr/v4/runtime/Token;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->const(Lorg/antlr/v4/runtime/tree/ParseTree;)Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 3
    invoke-virtual {v0, p0}, Landroid/support/v4/t52;->setParent(Landroid/support/v4/vo1;)V

    return-object v0
.end method
