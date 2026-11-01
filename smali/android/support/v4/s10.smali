.class public Landroid/support/v4/s10;
.super Lorg/antlr/v4/runtime/else;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/antlr/v4/runtime/else;-><init>()V

    return-void
.end method


# virtual methods
.method public recover(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/ql1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->c()Landroid/support/v4/qc1;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 2
    iput-object p2, p1, Landroid/support/v4/qc1;->else:Landroid/support/v4/ql1;

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/qc1;->switch()Landroid/support/v4/qc1;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/support/v4/hc1;

    invoke-direct {p1, p2}, Landroid/support/v4/hc1;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public recoverInline(Lorg/antlr/v4/runtime/goto;)Lorg/antlr/v4/runtime/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ql1;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/xm0;

    invoke-direct {v0, p1}, Landroid/support/v4/xm0;-><init>(Lorg/antlr/v4/runtime/goto;)V

    .line 2
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/goto;->c()Landroid/support/v4/qc1;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 3
    iput-object v0, p1, Landroid/support/v4/qc1;->else:Landroid/support/v4/ql1;

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/qc1;->switch()Landroid/support/v4/qc1;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/hc1;

    invoke-direct {p1, v0}, Landroid/support/v4/hc1;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
