.class public Landroid/support/v4/nc1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Landroid/support/v4/nc1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/nc1;

    invoke-direct {v0}, Landroid/support/v4/nc1;-><init>()V

    sput-object v0, Landroid/support/v4/nc1;->do:Landroid/support/v4/nc1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/RuleNode;->getRuleContext()Landroid/support/v4/vo1;

    move-result-object p2

    check-cast p2, Landroid/support/v4/qc1;

    .line 2
    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->enterEveryRule(Landroid/support/v4/qc1;)V

    .line 3
    invoke-virtual {p2, p1}, Landroid/support/v4/qc1;->public(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    return-void
.end method

.method public for(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/ParseTree;)V
    .locals 3

    .line 1
    instance-of v0, p2, Lorg/antlr/v4/runtime/tree/ErrorNode;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lorg/antlr/v4/runtime/tree/ErrorNode;

    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)V

    return-void

    .line 3
    :cond_0
    instance-of v0, p2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Lorg/antlr/v4/runtime/tree/TerminalNode;

    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)V

    return-void

    .line 5
    :cond_1
    check-cast p2, Lorg/antlr/v4/runtime/tree/RuleNode;

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/nc1;->do(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V

    .line 7
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/Tree;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 8
    invoke-interface {p2, v1}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/nc1;->for(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/ParseTree;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/nc1;->if(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V

    return-void
.end method

.method public if(Lorg/antlr/v4/runtime/tree/ParseTreeListener;Lorg/antlr/v4/runtime/tree/RuleNode;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lorg/antlr/v4/runtime/tree/RuleNode;->getRuleContext()Landroid/support/v4/vo1;

    move-result-object p2

    check-cast p2, Landroid/support/v4/qc1;

    .line 2
    invoke-virtual {p2, p1}, Landroid/support/v4/qc1;->return(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    .line 3
    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->exitEveryRule(Landroid/support/v4/qc1;)V

    return-void
.end method
