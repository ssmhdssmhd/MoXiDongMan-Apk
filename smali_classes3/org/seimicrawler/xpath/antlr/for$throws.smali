.class public Lorg/seimicrawler/xpath/antlr/for$throws;
.super Landroid/support/v4/qc1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seimicrawler/xpath/antlr/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "throws"
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

    invoke-interface {p1, p0}, Lorg/seimicrawler/xpath/antlr/XpathVisitor;->visitStep(Lorg/seimicrawler/xpath/antlr/for$throws;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;->visitChildren(Lorg/antlr/v4/runtime/tree/RuleNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public interface()Lorg/seimicrawler/xpath/antlr/for$throw;
    .locals 2

    .line 1
    const-class v0, Lorg/seimicrawler/xpath/antlr/for$throw;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/qc1;->throws(Ljava/lang/Class;I)Landroid/support/v4/qc1;

    move-result-object v0

    check-cast v0, Lorg/seimicrawler/xpath/antlr/for$throw;

    return-object v0
.end method

.method public protected()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/seimicrawler/xpath/antlr/for$native;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/seimicrawler/xpath/antlr/for$native;

    invoke-virtual {p0, v0}, Landroid/support/v4/qc1;->default(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public public(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/seimicrawler/xpath/antlr/XpathListener;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/seimicrawler/xpath/antlr/XpathListener;

    invoke-interface {p1, p0}, Lorg/seimicrawler/xpath/antlr/XpathListener;->enterStep(Lorg/seimicrawler/xpath/antlr/for$throws;)V

    :cond_0
    return-void
.end method

.method public return(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/seimicrawler/xpath/antlr/XpathListener;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/seimicrawler/xpath/antlr/XpathListener;

    invoke-interface {p1, p0}, Lorg/seimicrawler/xpath/antlr/XpathListener;->exitStep(Lorg/seimicrawler/xpath/antlr/for$throws;)V

    :cond_0
    return-void
.end method

.method public strictfp()Lorg/seimicrawler/xpath/antlr/for$do;
    .locals 2

    .line 1
    const-class v0, Lorg/seimicrawler/xpath/antlr/for$do;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/qc1;->throws(Ljava/lang/Class;I)Landroid/support/v4/qc1;

    move-result-object v0

    check-cast v0, Lorg/seimicrawler/xpath/antlr/for$do;

    return-object v0
.end method

.method public transient(I)Lorg/seimicrawler/xpath/antlr/for$native;
    .locals 1

    .line 1
    const-class v0, Lorg/seimicrawler/xpath/antlr/for$native;

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/qc1;->throws(Ljava/lang/Class;I)Landroid/support/v4/qc1;

    move-result-object p1

    check-cast p1, Lorg/seimicrawler/xpath/antlr/for$native;

    return-object p1
.end method

.method public try()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public volatile()Lorg/seimicrawler/xpath/antlr/for$try;
    .locals 2

    .line 1
    const-class v0, Lorg/seimicrawler/xpath/antlr/for$try;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/qc1;->throws(Ljava/lang/Class;I)Landroid/support/v4/qc1;

    move-result-object v0

    check-cast v0, Lorg/seimicrawler/xpath/antlr/for$try;

    return-object v0
.end method
