.class public Landroid/support/v4/sg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Committer;


# instance fields
.field private final do:Lorg/bouncycastle/crypto/Digest;

.field private final for:Ljava/security/SecureRandom;

.field private final if:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/ExtendedDigest;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/sg0;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result p1

    iput p1, p0, Landroid/support/v4/sg0;->if:I

    iput-object p2, p0, Landroid/support/v4/sg0;->for:Ljava/security/SecureRandom;

    return-void
.end method

.method private do([B[B)[B
    .locals 4

    iget-object v0, p0, Landroid/support/v4/sg0;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Landroid/support/v4/sg0;->do:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Landroid/support/v4/sg0;->do:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p2

    invoke-interface {p1, p2, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Landroid/support/v4/sg0;->do:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p2

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object p1, p0, Landroid/support/v4/sg0;->do:Lorg/bouncycastle/crypto/Digest;

    array-length p2, p2

    int-to-byte p2, p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object p1, p0, Landroid/support/v4/sg0;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, v0, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method


# virtual methods
.method public commit([B)Landroid/support/v4/ap;
    .locals 3

    array-length v0, p1

    iget v1, p0, Landroid/support/v4/sg0;->if:I

    div-int/lit8 v2, v1, 0x2

    if-gt v0, v2, :cond_0

    array-length v0, p1

    sub-int/2addr v1, v0

    new-array v0, v1, [B

    iget-object v1, p0, Landroid/support/v4/sg0;->for:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Landroid/support/v4/ap;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/sg0;->do([B[B)[B

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/support/v4/ap;-><init>([B[B)V

    return-object v1

    :cond_0
    new-instance p1, Landroid/support/v4/tw;

    const-string v0, "Message to be committed to too large for digest."

    invoke-direct {p1, v0}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isRevealed(Landroid/support/v4/ap;[B)Z
    .locals 2

    array-length v0, p2

    invoke-virtual {p1}, Landroid/support/v4/ap;->if()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/sg0;->if:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/ap;->if()[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/support/v4/sg0;->do([B[B)[B

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v4/ap;->do()[B

    move-result-object p1

    invoke-static {p1, p2}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Landroid/support/v4/tw;

    const-string p2, "Message and witness secret lengths do not match."

    invoke-direct {p1, p2}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    throw p1
.end method
