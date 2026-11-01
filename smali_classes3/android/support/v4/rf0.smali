.class public Landroid/support/v4/rf0;
.super Landroid/support/v4/dr0;
.source "SourceFile"


# instance fields
.field private for:Landroid/support/v4/yf0;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Landroid/support/v4/yf0;)V
    .locals 1

    invoke-virtual {p2}, Landroid/support/v4/yf0;->if()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Landroid/support/v4/rf0;->for:Landroid/support/v4/yf0;

    return-void
.end method


# virtual methods
.method public for()Landroid/support/v4/yf0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rf0;->for:Landroid/support/v4/yf0;

    return-object v0
.end method
