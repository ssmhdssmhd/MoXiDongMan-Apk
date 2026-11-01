.class public interface abstract Lorg/antlr/v4/runtime/ANTLRErrorStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract inErrorRecoveryMode(Lorg/antlr/v4/runtime/goto;)Z
.end method

.method public abstract recover(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/ql1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ql1;
        }
    .end annotation
.end method

.method public abstract recoverInline(Lorg/antlr/v4/runtime/goto;)Lorg/antlr/v4/runtime/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ql1;
        }
    .end annotation
.end method

.method public abstract reportError(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/ql1;)V
.end method

.method public abstract reportMatch(Lorg/antlr/v4/runtime/goto;)V
.end method

.method public abstract reset(Lorg/antlr/v4/runtime/goto;)V
.end method

.method public abstract sync(Lorg/antlr/v4/runtime/goto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ql1;
        }
    .end annotation
.end method
