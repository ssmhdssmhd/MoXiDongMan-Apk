.class public abstract Landroid/support/v4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/antlr/v4/runtime/tree/ParseTreeVisitor<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation

    return-object p2
.end method

.method public for(Lorg/antlr/v4/runtime/tree/RuleNode;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/RuleNode;",
            "TT;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public if()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public visit(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTree;->accept(Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitChildren(Lorg/antlr/v4/runtime/tree/RuleNode;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/RuleNode;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/c;->if()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/Tree;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/c;->for(Lorg/antlr/v4/runtime/tree/RuleNode;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1, v2}, Lorg/antlr/v4/runtime/tree/ParseTree;->getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;

    move-result-object v3

    .line 5
    invoke-interface {v3, p0}, Lorg/antlr/v4/runtime/tree/ParseTree;->accept(Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v0, v3}, Landroid/support/v4/c;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ErrorNode;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/c;->if()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/c;->if()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
