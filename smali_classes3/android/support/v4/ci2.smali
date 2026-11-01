.class public Landroid/support/v4/ci2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/RawAgreement;


# instance fields
.field private final do:Lorg/bouncycastle/crypto/RawAgreement;

.field private if:Landroid/support/v4/ai2;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/RawAgreement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ci2;->do:Lorg/bouncycastle/crypto/RawAgreement;

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V
    .locals 2

    check-cast p1, Landroid/support/v4/bi2;

    iget-object v0, p0, Landroid/support/v4/ci2;->do:Lorg/bouncycastle/crypto/RawAgreement;

    iget-object v1, p0, Landroid/support/v4/ci2;->if:Landroid/support/v4/ai2;

    invoke-virtual {v1}, Landroid/support/v4/ai2;->do()Landroid/support/v4/a4;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Landroid/support/v4/ci2;->do:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-virtual {p1}, Landroid/support/v4/bi2;->do()Landroid/support/v4/a4;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    iget-object v0, p0, Landroid/support/v4/ci2;->do:Lorg/bouncycastle/crypto/RawAgreement;

    iget-object v1, p0, Landroid/support/v4/ci2;->if:Landroid/support/v4/ai2;

    invoke-virtual {v1}, Landroid/support/v4/ai2;->for()Landroid/support/v4/a4;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Landroid/support/v4/ci2;->do:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-virtual {p1}, Landroid/support/v4/bi2;->if()Landroid/support/v4/a4;

    move-result-object p1

    iget-object v1, p0, Landroid/support/v4/ci2;->do:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/RawAgreement;->getAgreementSize()I

    move-result v1

    add-int/2addr p3, v1

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    return-void
.end method

.method public getAgreementSize()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ci2;->do:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/RawAgreement;->getAgreementSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    check-cast p1, Landroid/support/v4/ai2;

    iput-object p1, p0, Landroid/support/v4/ci2;->if:Landroid/support/v4/ai2;

    return-void
.end method
