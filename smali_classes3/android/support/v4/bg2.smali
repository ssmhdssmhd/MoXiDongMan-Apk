.class public final Landroid/support/v4/bg2;
.super Lorg/antlr/v4/runtime/atn/catch;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v4/finally;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/catch;-><init>(Landroid/support/v4/finally;)V

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public new(III)Z
    .locals 0

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "."

    return-object v0
.end method
