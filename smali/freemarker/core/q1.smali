.class Lfreemarker/core/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/ParserConfiguration;


# instance fields
.field private break:Ljava/lang/Integer;

.field private case:Lfreemarker/core/else;

.field private final catch:Landroid/support/v4/we2;

.field private final do:I

.field private else:Ljava/lang/Integer;

.field private final for:I

.field private goto:Landroid/support/v4/e91;

.field private final if:I

.field private final new:Z

.field private this:Ljava/lang/Boolean;

.field private final try:Z


# direct methods
.method public constructor <init>(ZZIIILjava/lang/Integer;Landroid/support/v4/e91;Ljava/lang/Boolean;Ljava/lang/Integer;Landroid/support/v4/we2;Lfreemarker/core/else;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Lfreemarker/core/q1;->do:I

    .line 3
    iput p4, p0, Lfreemarker/core/q1;->if:I

    .line 4
    iput p5, p0, Lfreemarker/core/q1;->for:I

    .line 5
    iput-boolean p2, p0, Lfreemarker/core/q1;->new:Z

    .line 6
    iput-boolean p1, p0, Lfreemarker/core/q1;->try:Z

    .line 7
    iput-object p6, p0, Lfreemarker/core/q1;->else:Ljava/lang/Integer;

    .line 8
    iput-object p7, p0, Lfreemarker/core/q1;->goto:Landroid/support/v4/e91;

    .line 9
    iput-object p8, p0, Lfreemarker/core/q1;->this:Ljava/lang/Boolean;

    .line 10
    iput-object p9, p0, Lfreemarker/core/q1;->break:Ljava/lang/Integer;

    .line 11
    iput-object p10, p0, Lfreemarker/core/q1;->catch:Landroid/support/v4/we2;

    .line 12
    iput-object p11, p0, Lfreemarker/core/q1;->case:Lfreemarker/core/else;

    return-void
.end method


# virtual methods
.method public do(Lfreemarker/core/else;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q1;->case:Lfreemarker/core/else;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lfreemarker/core/q1;->case:Lfreemarker/core/else;

    :cond_0
    return-void
.end method

.method public for(Landroid/support/v4/e91;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q1;->goto:Landroid/support/v4/e91;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lfreemarker/core/q1;->goto:Landroid/support/v4/e91;

    :cond_0
    return-void
.end method

.method public getArithmeticEngine()Lfreemarker/core/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q1;->case:Lfreemarker/core/else;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAutoEscapingPolicy()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q1;->else:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getIncompatibleImprovements()Landroid/support/v4/we2;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q1;->catch:Landroid/support/v4/we2;

    return-object v0
.end method

.method public getInterpolationSyntax()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/q1;->if:I

    return v0
.end method

.method public getNamingConvention()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/q1;->for:I

    return v0
.end method

.method public getOutputFormat()Landroid/support/v4/e91;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q1;->goto:Landroid/support/v4/e91;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getRecognizeStandardFileExtensions()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q1;->this:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getStrictSyntaxMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/q1;->try:Z

    return v0
.end method

.method public getTabSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q1;->break:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getTagSyntax()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/q1;->do:I

    return v0
.end method

.method public getWhitespaceStripping()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/q1;->new:Z

    return v0
.end method

.method public if(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q1;->else:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/q1;->else:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public new(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q1;->this:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/q1;->this:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public try(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/q1;->break:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/q1;->break:Ljava/lang/Integer;

    :cond_0
    return-void
.end method
