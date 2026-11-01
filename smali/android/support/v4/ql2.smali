.class public final Landroid/support/v4/ql2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/ParserConfiguration;


# instance fields
.field private final do:Landroid/support/v4/e91;

.field private final for:Lfreemarker/core/ParserConfiguration;

.field private final if:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lfreemarker/core/ParserConfiguration;Landroid/support/v4/e91;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/support/v4/ql2;->do:Landroid/support/v4/e91;

    .line 3
    iput-object p3, p0, Landroid/support/v4/ql2;->if:Ljava/lang/Integer;

    .line 4
    iput-object p1, p0, Landroid/support/v4/ql2;->for:Lfreemarker/core/ParserConfiguration;

    return-void
.end method


# virtual methods
.method public getArithmeticEngine()Lfreemarker/core/else;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql2;->for:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getArithmeticEngine()Lfreemarker/core/else;

    move-result-object v0

    return-object v0
.end method

.method public getAutoEscapingPolicy()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql2;->if:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/ql2;->for:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getAutoEscapingPolicy()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIncompatibleImprovements()Landroid/support/v4/we2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql2;->for:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    return-object v0
.end method

.method public getInterpolationSyntax()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql2;->for:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getInterpolationSyntax()I

    move-result v0

    return v0
.end method

.method public getNamingConvention()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql2;->for:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getNamingConvention()I

    move-result v0

    return v0
.end method

.method public getOutputFormat()Landroid/support/v4/e91;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql2;->do:Landroid/support/v4/e91;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/ql2;->for:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getOutputFormat()Landroid/support/v4/e91;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRecognizeStandardFileExtensions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStrictSyntaxMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql2;->for:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getStrictSyntaxMode()Z

    move-result v0

    return v0
.end method

.method public getTabSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql2;->for:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result v0

    return v0
.end method

.method public getTagSyntax()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql2;->for:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getTagSyntax()I

    move-result v0

    return v0
.end method

.method public getWhitespaceStripping()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ql2;->for:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getWhitespaceStripping()Z

    move-result v0

    return v0
.end method
