.class public Lorg/bouncycastle/pqc/crypto/newhope/try;
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
    .locals 4

    const/16 v0, 0x720

    new-array v0, v0, [B

    const/16 v1, 0x400

    new-array v1, v1, [S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/newhope/try;->do:Ljava/security/SecureRandom;

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/newhope/else;->case(Ljava/security/SecureRandom;[B[S)V

    new-instance v2, Landroid/support/v4/y3;

    new-instance v3, Landroid/support/v4/s11;

    invoke-direct {v3, v0}, Landroid/support/v4/s11;-><init>([B)V

    new-instance v0, Landroid/support/v4/r11;

    invoke-direct {v0, v1}, Landroid/support/v4/r11;-><init>([S)V

    invoke-direct {v2, v3, v0}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v2
.end method

.method public init(Landroid/support/v4/dr0;)V
    .locals 0

    invoke-virtual {p1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/newhope/try;->do:Ljava/security/SecureRandom;

    return-void
.end method
