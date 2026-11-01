.class public Landroid/support/v4/cs;
.super Landroid/support/v4/dr0;
.source "SourceFile"


# instance fields
.field private for:Landroid/support/v4/fs;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Landroid/support/v4/fs;)V
    .locals 1

    invoke-static {p2}, Landroid/support/v4/cs;->new(Landroid/support/v4/fs;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Landroid/support/v4/cs;->for:Landroid/support/v4/fs;

    return-void
.end method

.method public static new(Landroid/support/v4/fs;)I
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/fs;->new()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method


# virtual methods
.method public for()Landroid/support/v4/fs;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/cs;->for:Landroid/support/v4/fs;

    return-object v0
.end method
