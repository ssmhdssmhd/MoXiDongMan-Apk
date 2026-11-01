.class public Landroid/support/v4/v31;
.super Landroid/support/v4/ql1;
.source "SourceFile"


# instance fields
.field private final deadEndConfigs:Landroid/support/v4/throws;

.field private final startToken:Lorg/antlr/v4/runtime/Token;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/goto;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v2

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->d()Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->d()Lorg/antlr/v4/runtime/Token;

    move-result-object v4

    iget-object v6, p1, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/v31;-><init>(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Landroid/support/v4/throws;Landroid/support/v4/qc1;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Landroid/support/v4/throws;Landroid/support/v4/qc1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p6}, Landroid/support/v4/ql1;-><init>(Lorg/antlr/v4/runtime/this;Lorg/antlr/v4/runtime/IntStream;Landroid/support/v4/qc1;)V

    .line 3
    iput-object p5, p0, Landroid/support/v4/v31;->deadEndConfigs:Landroid/support/v4/throws;

    .line 4
    iput-object p3, p0, Landroid/support/v4/v31;->startToken:Lorg/antlr/v4/runtime/Token;

    .line 5
    invoke-virtual {p0, p4}, Landroid/support/v4/ql1;->setOffendingToken(Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method


# virtual methods
.method public getDeadEndConfigs()Landroid/support/v4/throws;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/v31;->deadEndConfigs:Landroid/support/v4/throws;

    return-object v0
.end method

.method public getStartToken()Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/v31;->startToken:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method
