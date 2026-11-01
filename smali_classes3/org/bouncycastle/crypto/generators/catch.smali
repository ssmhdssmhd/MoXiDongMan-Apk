.class public Lorg/bouncycastle/crypto/generators/catch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private do:Landroid/support/v4/pi0;

.field private for:[B

.field private if:I

.field private new:[B

.field private try:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/pi0;

    invoke-direct {v0, p1}, Landroid/support/v4/pi0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/catch;->do:Landroid/support/v4/pi0;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/generators/catch;->if:I

    return-void
.end method

.method private do()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/generators/catch;->try:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/catch;->if:I

    div-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x100

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/catch;->do:Landroid/support/v4/pi0;

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/catch;->new:[B

    invoke-virtual {v0, v4, v3, v1}, Landroid/support/v4/pi0;->update([BII)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/catch;->do:Landroid/support/v4/pi0;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/catch;->for:[B

    array-length v4, v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/support/v4/pi0;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/catch;->do:Landroid/support/v4/pi0;

    int-to-byte v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/pi0;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/catch;->do:Landroid/support/v4/pi0;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/catch;->new:[B

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/pi0;->doFinal([BI)I

    return-void

    :cond_1
    new-instance v0, Landroid/support/v4/tw;

    const-string v1, "HKDF cannot generate more than 255 blocks of HashLen size"

    invoke-direct {v0, v1}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private if([B[B)Landroid/support/v4/gr0;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/catch;->do:Landroid/support/v4/pi0;

    new-instance v0, Landroid/support/v4/gr0;

    iget v1, p0, Lorg/bouncycastle/crypto/generators/catch;->if:I

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroid/support/v4/gr0;-><init>([B)V

    invoke-virtual {p1, v0}, Landroid/support/v4/pi0;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/catch;->do:Landroid/support/v4/pi0;

    new-instance v1, Landroid/support/v4/gr0;

    invoke-direct {v1, p1}, Landroid/support/v4/gr0;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/pi0;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/catch;->do:Landroid/support/v4/pi0;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/support/v4/pi0;->update([BII)V

    iget p1, p0, Lorg/bouncycastle/crypto/generators/catch;->if:I

    new-array p1, p1, [B

    iget-object p2, p0, Lorg/bouncycastle/crypto/generators/catch;->do:Landroid/support/v4/pi0;

    invoke-virtual {p2, p1, v1}, Landroid/support/v4/pi0;->doFinal([BI)I

    new-instance p2, Landroid/support/v4/gr0;

    invoke-direct {p2, p1}, Landroid/support/v4/gr0;-><init>([B)V

    return-object p2
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/generators/catch;->try:I

    add-int v1, v0, p3

    iget v2, p0, Lorg/bouncycastle/crypto/generators/catch;->if:I

    mul-int/lit16 v3, v2, 0xff

    if-gt v1, v3, :cond_2

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/catch;->do()V

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/generators/catch;->try:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/catch;->if:I

    rem-int v2, v0, v1

    rem-int/2addr v0, v1

    sub-int/2addr v1, v0

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/catch;->new:[B

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/generators/catch;->try:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/generators/catch;->try:I

    sub-int v1, p3, v0

    :goto_0
    add-int/2addr p2, v0

    if-lez v1, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/catch;->do()V

    iget v0, p0, Lorg/bouncycastle/crypto/generators/catch;->if:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/catch;->new:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/crypto/generators/catch;->try:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/crypto/generators/catch;->try:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    new-instance p1, Landroid/support/v4/tw;

    const-string p2, "HKDF may only be used for 255 * HashLen bytes of output"

    invoke-direct {p1, p2}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/catch;->do:Landroid/support/v4/pi0;

    invoke-virtual {v0}, Landroid/support/v4/pi0;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 3

    instance-of v0, p1, Landroid/support/v4/oi0;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/oi0;

    invoke-virtual {p1}, Landroid/support/v4/oi0;->try()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/catch;->do:Landroid/support/v4/pi0;

    new-instance v1, Landroid/support/v4/gr0;

    invoke-virtual {p1}, Landroid/support/v4/oi0;->if()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/gr0;-><init>([B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/catch;->do:Landroid/support/v4/pi0;

    invoke-virtual {p1}, Landroid/support/v4/oi0;->new()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/oi0;->if()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/generators/catch;->if([B[B)Landroid/support/v4/gr0;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/pi0;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Landroid/support/v4/oi0;->for()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/catch;->for:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/generators/catch;->try:I

    iget p1, p0, Lorg/bouncycastle/crypto/generators/catch;->if:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/catch;->new:[B

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HKDF parameters required for HKDFBytesGenerator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
