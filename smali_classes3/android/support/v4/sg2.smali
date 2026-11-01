.class public Landroid/support/v4/sg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private do:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Landroid/support/v4/y3;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/params/this;

    iget-object v1, p0, Landroid/support/v4/sg2;->do:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/this;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/this;->for()Lorg/bouncycastle/crypto/params/break;

    move-result-object v1

    new-instance v2, Landroid/support/v4/y3;

    invoke-direct {v2, v1, v0}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v2
.end method

.method public init(Landroid/support/v4/dr0;)V
    .locals 0

    invoke-virtual {p1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/sg2;->do:Ljava/security/SecureRandom;

    return-void
.end method
