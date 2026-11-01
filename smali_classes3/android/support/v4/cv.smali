.class public Landroid/support/v4/cv;
.super Landroid/support/v4/dr0;
.source "SourceFile"


# instance fields
.field private for:Landroid/support/v4/hv;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Landroid/support/v4/hv;)V
    .locals 1

    invoke-virtual {p2}, Landroid/support/v4/hv;->if()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Landroid/support/v4/cv;->for:Landroid/support/v4/hv;

    return-void
.end method


# virtual methods
.method public for()Landroid/support/v4/hv;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/cv;->for:Landroid/support/v4/hv;

    return-object v0
.end method
