.class public Lorg/seimicrawler/xpath/antlr/for$public;
.super Landroid/support/v4/qc1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seimicrawler/xpath/antlr/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "public"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/qc1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/qc1;-><init>(Landroid/support/v4/qc1;I)V

    return-void
.end method


# virtual methods
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

    invoke-interface {p1, p0}, Lorg/seimicrawler/xpath/antlr/XpathVisitor;->visitPrimaryExpr(Lorg/seimicrawler/xpath/antlr/for$public;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;->visitChildren(Lorg/antlr/v4/runtime/tree/RuleNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public interface()Lorg/seimicrawler/xpath/antlr/for$else;
    .locals 2

    .line 1
    const-class v0, Lorg/seimicrawler/xpath/antlr/for$else;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/qc1;->throws(Ljava/lang/Class;I)Landroid/support/v4/qc1;

    move-result-object v0

    check-cast v0, Lorg/seimicrawler/xpath/antlr/for$else;

    return-object v0
.end method

.method public protected()Lorg/seimicrawler/xpath/antlr/for$this;
    .locals 2

    .line 1
    const-class v0, Lorg/seimicrawler/xpath/antlr/for$this;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/qc1;->throws(Ljava/lang/Class;I)Landroid/support/v4/qc1;

    move-result-object v0

    check-cast v0, Lorg/seimicrawler/xpath/antlr/for$this;

    return-object v0
.end method

.method public public(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/seimicrawler/xpath/antlr/XpathListener;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/seimicrawler/xpath/antlr/XpathListener;

    invoke-interface {p1, p0}, Lorg/seimicrawler/xpath/antlr/XpathListener;->enterPrimaryExpr(Lorg/seimicrawler/xpath/antlr/for$public;)V

    :cond_0
    return-void
.end method

.method public return(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/seimicrawler/xpath/antlr/XpathListener;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/seimicrawler/xpath/antlr/XpathListener;

    invoke-interface {p1, p0}, Lorg/seimicrawler/xpath/antlr/XpathListener;->exitPrimaryExpr(Lorg/seimicrawler/xpath/antlr/for$public;)V

    :cond_0
    return-void
.end method

.method public strictfp()Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 2

    const/16 v0, 0x27

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/qc1;->package(II)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object v0

    return-object v0
.end method

.method public transient()Lorg/seimicrawler/xpath/antlr/for$finally;
    .locals 2

    .line 1
    const-class v0, Lorg/seimicrawler/xpath/antlr/for$finally;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/qc1;->throws(Ljava/lang/Class;I)Landroid/support/v4/qc1;

    move-result-object v0

    check-cast v0, Lorg/seimicrawler/xpath/antlr/for$finally;

    return-object v0
.end method

.method public try()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public volatile()Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/qc1;->package(II)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object v0

    return-object v0
.end method
