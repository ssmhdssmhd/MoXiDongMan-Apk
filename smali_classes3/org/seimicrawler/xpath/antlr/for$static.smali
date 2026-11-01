.class public Lorg/seimicrawler/xpath/antlr/for$static;
.super Landroid/support/v4/qc1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seimicrawler/xpath/antlr/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "static"
.end annotation


# instance fields
.field public goto:Lorg/antlr/v4/runtime/Token;


# direct methods
.method public constructor <init>(Landroid/support/v4/qc1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/qc1;-><init>(Landroid/support/v4/qc1;I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x19

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->private(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;)Ljava/lang/Object;
    .locals 1
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
    instance-of v0, p1, Lorg/seimicrawler/xpath/antlr/XpathVisitor;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/seimicrawler/xpath/antlr/XpathVisitor;

    invoke-interface {p1, p0}, Lorg/seimicrawler/xpath/antlr/XpathVisitor;->visitRelationalExpr(Lorg/seimicrawler/xpath/antlr/for$static;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;->visitChildren(Lorg/antlr/v4/runtime/tree/RuleNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 1

    const/16 v0, 0x19

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/qc1;->package(II)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x22

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->private(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 1

    const/16 v0, 0x22

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/qc1;->package(II)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x21

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->private(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 1

    const/16 v0, 0x21

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/qc1;->package(II)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1e

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->private(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 1

    const/16 v0, 0x1e

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/qc1;->package(II)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    return-object p1
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/seimicrawler/xpath/antlr/for$for;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/seimicrawler/xpath/antlr/for$for;

    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->default(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public implements(I)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 1

    const/16 v0, 0x1b

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/qc1;->package(II)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    return-object p1
.end method

.method public instanceof()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x18

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->private(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public interface()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1f

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->private(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j(I)Lorg/seimicrawler/xpath/antlr/for$for;
    .locals 1

    .line 1
    const-class v0, Lorg/seimicrawler/xpath/antlr/for$for;

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/qc1;->throws(Ljava/lang/Class;I)Landroid/support/v4/qc1;

    move-result-object p1

    check-cast p1, Lorg/seimicrawler/xpath/antlr/for$for;

    return-object p1
.end method

.method public protected(I)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 1

    const/16 v0, 0x1f

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/qc1;->package(II)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    return-object p1
.end method

.method public public(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/seimicrawler/xpath/antlr/XpathListener;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/seimicrawler/xpath/antlr/XpathListener;

    invoke-interface {p1, p0}, Lorg/seimicrawler/xpath/antlr/XpathListener;->enterRelationalExpr(Lorg/seimicrawler/xpath/antlr/for$static;)V

    :cond_0
    return-void
.end method

.method public return(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/seimicrawler/xpath/antlr/XpathListener;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/seimicrawler/xpath/antlr/XpathListener;

    invoke-interface {p1, p0}, Lorg/seimicrawler/xpath/antlr/XpathListener;->exitRelationalExpr(Lorg/seimicrawler/xpath/antlr/for$static;)V

    :cond_0
    return-void
.end method

.method public strictfp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->private(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synchronized(I)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 1

    const/16 v0, 0x18

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/qc1;->package(II)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    return-object p1
.end method

.method public transient()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/TerminalNode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1b

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->private(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public try()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public volatile(I)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/qc1;->package(II)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object p1

    return-object p1
.end method
