.class public interface abstract Lorg/antlr/v4/runtime/ANTLRErrorListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract reportAmbiguity(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/dfa/do;IIZLjava/util/BitSet;Landroid/support/v4/throws;)V
.end method

.method public abstract reportAttemptingFullContext(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/dfa/do;IILjava/util/BitSet;Landroid/support/v4/throws;)V
.end method

.method public abstract reportContextSensitivity(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/dfa/do;IIILandroid/support/v4/throws;)V
.end method

.method public abstract syntaxError(Lorg/antlr/v4/runtime/this;Ljava/lang/Object;IILjava/lang/String;Landroid/support/v4/ql1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/this<",
            "**>;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/String;",
            "Landroid/support/v4/ql1;",
            ")V"
        }
    .end annotation
.end method
