.class public Landroid/support/v4/sg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/ANTLRErrorListener;


# instance fields
.field private final do:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lorg/antlr/v4/runtime/ANTLRErrorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/antlr/v4/runtime/ANTLRErrorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegates"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroid/support/v4/sg1;->do:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public reportAmbiguity(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/dfa/do;IIZLjava/util/BitSet;Landroid/support/v4/throws;)V
    .locals 11

    move-object v0, p0

    .line 1
    iget-object v1, v0, Landroid/support/v4/sg1;->do:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 2
    invoke-interface/range {v3 .. v10}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportAmbiguity(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/dfa/do;IIZLjava/util/BitSet;Landroid/support/v4/throws;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reportAttemptingFullContext(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/dfa/do;IILjava/util/BitSet;Landroid/support/v4/throws;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/sg1;->do:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 2
    invoke-interface/range {v2 .. v8}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportAttemptingFullContext(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/dfa/do;IILjava/util/BitSet;Landroid/support/v4/throws;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reportContextSensitivity(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/dfa/do;IIILandroid/support/v4/throws;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/sg1;->do:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 2
    invoke-interface/range {v2 .. v8}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportContextSensitivity(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/dfa/do;IIILandroid/support/v4/throws;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public syntaxError(Lorg/antlr/v4/runtime/this;Ljava/lang/Object;IILjava/lang/String;Landroid/support/v4/ql1;)V
    .locals 9
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

    .line 1
    iget-object v0, p0, Landroid/support/v4/sg1;->do:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 2
    invoke-interface/range {v2 .. v8}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->syntaxError(Lorg/antlr/v4/runtime/this;Ljava/lang/Object;IILjava/lang/String;Landroid/support/v4/ql1;)V

    goto :goto_0

    :cond_0
    return-void
.end method
