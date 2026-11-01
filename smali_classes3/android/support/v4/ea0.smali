.class public Landroid/support/v4/ea0;
.super Landroid/support/v4/ql1;
.source "SourceFile"


# instance fields
.field private final predicate:Ljava/lang/String;

.field private final predicateIndex:I

.field private final ruleIndex:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/goto;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/ea0;-><init>(Lorg/antlr/v4/runtime/goto;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/goto;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/ea0;-><init>(Lorg/antlr/v4/runtime/goto;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/goto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {p2, p3}, Landroid/support/v4/ea0;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    iget-object v1, p1, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-direct {p0, p3, p1, v0, v1}, Landroid/support/v4/ql1;-><init>(Ljava/lang/String;Lorg/antlr/v4/runtime/this;Lorg/antlr/v4/runtime/IntStream;Landroid/support/v4/qc1;)V

    .line 4
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object p3

    check-cast p3, Lorg/antlr/v4/runtime/atn/new;

    iget-object p3, p3, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget-object p3, p3, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->final()I

    move-result v0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/finally;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p3, v0}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object p3

    check-cast p3, Landroid/support/v4/d;

    .line 6
    instance-of v1, p3, Lorg/antlr/v4/runtime/atn/case;

    if-eqz v1, :cond_0

    .line 7
    check-cast p3, Lorg/antlr/v4/runtime/atn/case;

    iget v0, p3, Lorg/antlr/v4/runtime/atn/case;->final:I

    iput v0, p0, Landroid/support/v4/ea0;->ruleIndex:I

    .line 8
    iget p3, p3, Lorg/antlr/v4/runtime/atn/case;->super:I

    iput p3, p0, Landroid/support/v4/ea0;->predicateIndex:I

    goto :goto_0

    .line 9
    :cond_0
    iput v0, p0, Landroid/support/v4/ea0;->ruleIndex:I

    .line 10
    iput v0, p0, Landroid/support/v4/ea0;->predicateIndex:I

    .line 11
    :goto_0
    iput-object p2, p0, Landroid/support/v4/ea0;->predicate:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->d()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/ql1;->setOffendingToken(Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method

.method private static do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "failed predicate: {%s}?"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPredIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ea0;->predicateIndex:I

    return v0
.end method

.method public getPredicate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ea0;->predicate:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ea0;->ruleIndex:I

    return v0
.end method
