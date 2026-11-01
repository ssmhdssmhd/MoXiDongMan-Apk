.class public Landroid/support/v4/xm0;
.super Landroid/support/v4/ql1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/goto;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    iget-object v1, p1, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/ql1;-><init>(Lorg/antlr/v4/runtime/this;Lorg/antlr/v4/runtime/IntStream;Landroid/support/v4/qc1;)V

    .line 2
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->d()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/ql1;->setOffendingToken(Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method
