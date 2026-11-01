.class public Landroid/support/v4/ju;
.super Landroid/support/v4/dr0;
.source "SourceFile"


# instance fields
.field private for:Landroid/support/v4/ou;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Landroid/support/v4/ou;)V
    .locals 1

    invoke-static {p2}, Landroid/support/v4/ju;->new(Landroid/support/v4/ou;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Landroid/support/v4/ju;->for:Landroid/support/v4/ou;

    return-void
.end method

.method public static new(Landroid/support/v4/ou;)I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/ou;->new()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/ou;->new()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/ou;->case()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public for()Landroid/support/v4/ou;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ju;->for:Landroid/support/v4/ou;

    return-object v0
.end method
