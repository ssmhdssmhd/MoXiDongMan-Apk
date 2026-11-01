.class public Landroid/support/v4/q40;
.super Landroid/support/v4/dr0;
.source "SourceFile"


# instance fields
.field private for:Landroid/support/v4/e40;


# direct methods
.method public constructor <init>(Landroid/support/v4/e40;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, p2, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p1, p0, Landroid/support/v4/q40;->for:Landroid/support/v4/e40;

    return-void
.end method


# virtual methods
.method public for()Landroid/support/v4/e40;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q40;->for:Landroid/support/v4/e40;

    return-object v0
.end method
