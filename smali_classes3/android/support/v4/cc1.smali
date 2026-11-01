.class public Landroid/support/v4/cc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private do:Ljava/security/SecureRandom;

.field private if:Lorg/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/cc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/cc1;->do:Ljava/security/SecureRandom;

    iput-object p1, p0, Landroid/support/v4/cc1;->if:Lorg/bouncycastle/crypto/CipherParameters;

    return-void
.end method


# virtual methods
.method public do()Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/cc1;->if:Lorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public if()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/cc1;->do:Ljava/security/SecureRandom;

    return-object v0
.end method
