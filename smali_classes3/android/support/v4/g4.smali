.class public final Landroid/support/v4/g4;
.super Lorg/antlr/v4/runtime/atn/catch;
.source "SourceFile"


# instance fields
.field public final final:I


# direct methods
.method public constructor <init>(Landroid/support/v4/finally;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/catch;-><init>(Landroid/support/v4/finally;)V

    .line 2
    iput p2, p0, Landroid/support/v4/g4;->final:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public for()Landroid/support/v4/sn0;
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/g4;->final:I

    invoke-static {v0}, Landroid/support/v4/sn0;->super(I)Landroid/support/v4/sn0;

    move-result-object v0

    return-object v0
.end method

.method public new(III)Z
    .locals 0

    .line 1
    iget p2, p0, Landroid/support/v4/g4;->final:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/g4;->final:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
