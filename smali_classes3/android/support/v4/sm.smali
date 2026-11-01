.class public abstract Landroid/support/v4/sm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/support/v4/finally;I)Lorg/antlr/v4/runtime/atn/catch;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/lx1;

    invoke-static {p1}, Landroid/support/v4/sn0;->super(I)Landroid/support/v4/sn0;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/support/v4/lx1;-><init>(Landroid/support/v4/finally;Landroid/support/v4/sn0;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/g4;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/g4;-><init>(Landroid/support/v4/finally;I)V

    return-object v0
.end method

.method public static if(Landroid/support/v4/finally;II)Lorg/antlr/v4/runtime/atn/catch;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/il1;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/il1;-><init>(Landroid/support/v4/finally;II)V

    return-object v0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Landroid/support/v4/lx1;

    invoke-static {p1, p2}, Landroid/support/v4/sn0;->throw(II)Landroid/support/v4/sn0;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/support/v4/lx1;-><init>(Landroid/support/v4/finally;Landroid/support/v4/sn0;)V

    return-object v0
.end method
