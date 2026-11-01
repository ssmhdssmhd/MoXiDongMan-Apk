.class public Landroid/support/v4/lx1;
.super Lorg/antlr/v4/runtime/atn/catch;
.source "SourceFile"


# instance fields
.field public final final:Landroid/support/v4/sn0;


# direct methods
.method public constructor <init>(Landroid/support/v4/finally;Landroid/support/v4/sn0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/catch;-><init>(Landroid/support/v4/finally;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Landroid/support/v4/sn0;->super(I)Landroid/support/v4/sn0;

    move-result-object p2

    .line 3
    :cond_0
    iput-object p2, p0, Landroid/support/v4/lx1;->final:Landroid/support/v4/sn0;

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public for()Landroid/support/v4/sn0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/lx1;->final:Landroid/support/v4/sn0;

    return-object v0
.end method

.method public new(III)Z
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/support/v4/lx1;->final:Landroid/support/v4/sn0;

    invoke-virtual {p2, p1}, Landroid/support/v4/sn0;->contains(I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/lx1;->final:Landroid/support/v4/sn0;

    invoke-virtual {v0}, Landroid/support/v4/sn0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
