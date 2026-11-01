.class public Landroid/support/v4/e80;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

.field private if:Lorg/bouncycastle/crypto/KeyEncoder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/bouncycastle/crypto/KeyEncoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/e80;->do:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    iput-object p2, p0, Landroid/support/v4/e80;->if:Lorg/bouncycastle/crypto/KeyEncoder;

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/d80;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/e80;->do:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    new-instance v1, Landroid/support/v4/d80;

    iget-object v2, p0, Landroid/support/v4/e80;->if:Lorg/bouncycastle/crypto/KeyEncoder;

    invoke-direct {v1, v0, v2}, Landroid/support/v4/d80;-><init>(Landroid/support/v4/y3;Lorg/bouncycastle/crypto/KeyEncoder;)V

    return-object v1
.end method
