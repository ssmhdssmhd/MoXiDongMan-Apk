.class Lorg/bouncycastle/crypto/prng/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/crypto/prng/do;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lorg/bouncycastle/crypto/prng/do;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/prng/do;I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/do$do;->if:Lorg/bouncycastle/crypto/prng/do;

    iput p2, p0, Lorg/bouncycastle/crypto/prng/do$do;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public entropySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/prng/do$do;->do:I

    return v0
.end method

.method public getEntropy()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/do$do;->if:Lorg/bouncycastle/crypto/prng/do;

    invoke-static {v0}, Lorg/bouncycastle/crypto/prng/do;->if(Lorg/bouncycastle/crypto/prng/do;)Ljava/security/SecureRandom;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/crypto/prng/if;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/do$do;->if:Lorg/bouncycastle/crypto/prng/do;

    invoke-static {v0}, Lorg/bouncycastle/crypto/prng/do;->if(Lorg/bouncycastle/crypto/prng/do;)Ljava/security/SecureRandom;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/ph2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/do$do;->if:Lorg/bouncycastle/crypto/prng/do;

    invoke-static {v0}, Lorg/bouncycastle/crypto/prng/do;->if(Lorg/bouncycastle/crypto/prng/do;)Ljava/security/SecureRandom;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/prng/do$do;->do:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/prng/do$do;->do:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/do$do;->if:Lorg/bouncycastle/crypto/prng/do;

    invoke-static {v1}, Lorg/bouncycastle/crypto/prng/do;->if(Lorg/bouncycastle/crypto/prng/do;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public isPredictionResistant()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/do$do;->if:Lorg/bouncycastle/crypto/prng/do;

    invoke-static {v0}, Lorg/bouncycastle/crypto/prng/do;->do(Lorg/bouncycastle/crypto/prng/do;)Z

    move-result v0

    return v0
.end method
