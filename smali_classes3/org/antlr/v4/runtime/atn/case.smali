.class public final Lorg/antlr/v4/runtime/atn/case;
.super Landroid/support/v4/d;
.source "SourceFile"


# instance fields
.field public final final:I

.field public final super:I

.field public final throw:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/finally;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/d;-><init>(Landroid/support/v4/finally;)V

    .line 2
    iput p2, p0, Lorg/antlr/v4/runtime/atn/case;->final:I

    .line 3
    iput p3, p0, Lorg/antlr/v4/runtime/atn/case;->super:I

    .line 4
    iput-boolean p4, p0, Lorg/antlr/v4/runtime/atn/case;->throw:Z

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public if()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public new(III)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pred_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/case;->final:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/case;->super:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Lorg/antlr/v4/runtime/atn/break$try;
    .locals 4

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/atn/break$try;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/case;->final:I

    iget v2, p0, Lorg/antlr/v4/runtime/atn/case;->super:I

    iget-boolean v3, p0, Lorg/antlr/v4/runtime/atn/case;->throw:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/antlr/v4/runtime/atn/break$try;-><init>(IIZ)V

    return-object v0
.end method
