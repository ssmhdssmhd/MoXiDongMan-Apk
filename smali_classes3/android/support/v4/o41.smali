.class public final Landroid/support/v4/o41;
.super Landroid/support/v4/lx1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v4/finally;Landroid/support/v4/sn0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/lx1;-><init>(Landroid/support/v4/finally;Landroid/support/v4/sn0;)V

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public new(III)Z
    .locals 0

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/lx1;->new(III)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/support/v4/lx1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
