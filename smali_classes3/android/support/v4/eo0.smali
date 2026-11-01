.class public Landroid/support/v4/eo0;
.super Landroid/support/v4/nc1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/nc1;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/ParseTree;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 2
    new-instance v1, Landroid/support/v4/gn0;

    invoke-direct {v1}, Landroid/support/v4/gn0;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eqz p2, :cond_6

    .line 3
    instance-of v4, p2, Lorg/antlr/v4/runtime/tree/ErrorNode;

    if-eqz v4, :cond_0

    .line 4
    move-object v4, p2

    check-cast v4, Lorg/antlr/v4/runtime/tree/ErrorNode;

    invoke-interface {p1, v4}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)V

    goto :goto_2

    .line 5
    :cond_0
    instance-of v4, p2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v4, :cond_1

    .line 6
    move-object v4, p2

    check-cast v4, Lorg/antlr/v4/runtime/tree/TerminalNode;

    invoke-interface {p1, v4}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)V

    goto :goto_2

    .line 7
    :cond_1
    move-object v4, p2

    check-cast v4, Lorg/antlr/v4/runtime/tree/RuleNode;

    .line 8
    invoke-virtual {p0, p1, v4}, Landroid/support/v4/nc1;->do(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V

    .line 9
    :goto_2
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/Tree;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 10
    invoke-interface {v0, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v1, v3}, Landroid/support/v4/gn0;->switch(I)V

    .line 12
    invoke-interface {p2, v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p2

    goto :goto_0

    .line 13
    :cond_2
    instance-of v4, p2, Lorg/antlr/v4/runtime/tree/RuleNode;

    if-eqz v4, :cond_3

    .line 14
    check-cast p2, Lorg/antlr/v4/runtime/tree/RuleNode;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/nc1;->if(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V

    .line 15
    :cond_3
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_0

    .line 16
    :cond_4
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/antlr/v4/runtime/tree/ParseTree;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2, v3}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p2

    if-eqz p2, :cond_5

    goto :goto_1

    .line 17
    :cond_5
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 18
    invoke-virtual {v1}, Landroid/support/v4/gn0;->static()I

    move-result v3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_6
    return-void
.end method
