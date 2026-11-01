.class public Landroid/support/v4/g60;
.super Landroid/support/v4/dr0;
.source "SourceFile"


# instance fields
.field private for:Landroid/support/v4/l60;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Landroid/support/v4/l60;)V
    .locals 1

    invoke-static {p2}, Landroid/support/v4/g60;->new(Landroid/support/v4/l60;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Landroid/support/v4/g60;->for:Landroid/support/v4/l60;

    return-void
.end method

.method public static new(Landroid/support/v4/l60;)I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/l60;->if()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/l60;->if()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/l60;->for()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public for()Landroid/support/v4/l60;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g60;->for:Landroid/support/v4/l60;

    return-object v0
.end method
