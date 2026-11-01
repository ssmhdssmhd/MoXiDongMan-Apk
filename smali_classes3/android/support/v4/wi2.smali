.class public Landroid/support/v4/wi2;
.super Landroid/support/v4/qi2;
.source "SourceFile"


# instance fields
.field public for:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/qi2;-><init>(Ljava/lang/String;)V

    .line 2
    iput p2, p0, Landroid/support/v4/wi2;->for:I

    return-void
.end method


# virtual methods
.method public do(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/v82;->goto(Lorg/antlr/v4/runtime/tree/Tree;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/tree/Tree;

    .line 3
    instance-of v2, v1, Lorg/antlr/v4/runtime/tree/TerminalNode;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lorg/antlr/v4/runtime/tree/TerminalNode;

    .line 5
    invoke-interface {v1}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    iget v3, p0, Landroid/support/v4/wi2;->for:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/qi2;->if:Z

    if-eqz v2, :cond_2

    :cond_1
    invoke-interface {v1}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    invoke-interface {v2}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    iget v3, p0, Landroid/support/v4/wi2;->for:I

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/qi2;->if:Z

    if-eqz v2, :cond_0

    .line 6
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
