.class public final Landroid/support/v4/kg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/RawAgreement;


# instance fields
.field private do:Lorg/bouncycastle/crypto/params/else;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/kg2;->do:Lorg/bouncycastle/crypto/params/else;

    check-cast p1, Lorg/bouncycastle/crypto/params/goto;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/params/else;->new(Lorg/bouncycastle/crypto/params/goto;[BI)V

    return-void
.end method

.method public getAgreementSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/params/else;

    iput-object p1, p0, Landroid/support/v4/kg2;->do:Lorg/bouncycastle/crypto/params/else;

    return-void
.end method
