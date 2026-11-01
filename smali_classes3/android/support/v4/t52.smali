.class public Landroid/support/v4/t52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/TerminalNode;


# instance fields
.field public do:Lorg/antlr/v4/runtime/Token;

.field public if:Lorg/antlr/v4/runtime/tree/ParseTree;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Token;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/t52;->do:Lorg/antlr/v4/runtime/Token;

    return-void
.end method


# virtual methods
.method public accept(Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/antlr/v4/runtime/tree/ParseTreeVisitor<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;->visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public do()Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/t52;->do:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChild(I)Lorg/antlr/v4/runtime/tree/Tree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/t52;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParent()Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/support/v4/t52;->if:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/antlr/v4/runtime/tree/Tree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/t52;->getParent()Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPayload()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/t52;->do()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    return-object v0
.end method

.method public getSourceInterval()Landroid/support/v4/rn0;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t52;->do:Lorg/antlr/v4/runtime/Token;

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v4/rn0;->new:Landroid/support/v4/rn0;

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    .line 3
    new-instance v1, Landroid/support/v4/rn0;

    invoke-direct {v1, v0, v0}, Landroid/support/v4/rn0;-><init>(II)V

    return-object v1
.end method

.method public getSymbol()Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/t52;->do:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/t52;->do:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setParent(Landroid/support/v4/vo1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/t52;->if:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t52;->do:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "<EOF>"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/t52;->do:Lorg/antlr/v4/runtime/Token;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringTree()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/t52;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringTree(Lorg/antlr/v4/runtime/goto;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/t52;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
