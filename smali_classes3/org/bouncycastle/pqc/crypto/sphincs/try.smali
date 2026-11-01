.class public Lorg/bouncycastle/pqc/crypto/sphincs/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private do:Ljava/security/SecureRandom;

.field private if:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Landroid/support/v4/y3;
    .locals 10

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;-><init>()V

    const/16 v0, 0x440

    new-array v8, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/try;->do:Ljava/security/SecureRandom;

    invoke-virtual {v0, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v0, 0x420

    new-array v9, v0, [B

    const/16 v0, 0x20

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-static {v8, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xb

    iput v0, v5, Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;->do:I

    const-wide/16 v0, 0x0

    iput-wide v0, v5, Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;->if:J

    iput-wide v0, v5, Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;->for:J

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincs/do;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/try;->if:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/do;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const/4 v3, 0x5

    const/4 v7, 0x0

    move-object v1, v9

    move-object v4, v8

    move-object v6, v9

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/goto;->for(Lorg/bouncycastle/pqc/crypto/sphincs/do;[BII[BLorg/bouncycastle/pqc/crypto/sphincs/goto$do;[BI)V

    new-instance v0, Landroid/support/v4/y3;

    new-instance v1, Landroid/support/v4/br1;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincs/try;->if:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Landroid/support/v4/br1;-><init>([BLjava/lang/String;)V

    new-instance v2, Landroid/support/v4/ar1;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincs/try;->if:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Landroid/support/v4/ar1;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v0
.end method

.method public init(Landroid/support/v4/dr0;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/try;->do:Ljava/security/SecureRandom;

    check-cast p1, Landroid/support/v4/xq1;

    invoke-virtual {p1}, Landroid/support/v4/xq1;->for()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/try;->if:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method
