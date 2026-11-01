.class public final Landroid/support/v4/il1;
.super Lorg/antlr/v4/runtime/atn/catch;
.source "SourceFile"


# instance fields
.field public final final:I

.field public final super:I


# direct methods
.method public constructor <init>(Landroid/support/v4/finally;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/catch;-><init>(Landroid/support/v4/finally;)V

    .line 2
    iput p2, p0, Landroid/support/v4/il1;->final:I

    .line 3
    iput p3, p0, Landroid/support/v4/il1;->super:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public for()Landroid/support/v4/sn0;
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/il1;->final:I

    iget v1, p0, Landroid/support/v4/il1;->super:I

    invoke-static {v0, v1}, Landroid/support/v4/sn0;->throw(II)Landroid/support/v4/sn0;

    move-result-object v0

    return-object v0
.end method

.method public new(III)Z
    .locals 0

    .line 1
    iget p2, p0, Landroid/support/v4/il1;->final:I

    if-lt p1, p2, :cond_0

    iget p2, p0, Landroid/support/v4/il1;->super:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v4/il1;->final:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'..\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v4/il1;->super:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
