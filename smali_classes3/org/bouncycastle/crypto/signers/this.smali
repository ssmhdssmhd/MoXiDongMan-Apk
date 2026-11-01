.class public Lorg/bouncycastle/crypto/signers/this;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;
.implements Lorg/bouncycastle/math/ec/ECConstants;


# instance fields
.field private case:Landroid/support/v4/s40;

.field private final do:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

.field private else:[B

.field private final for:Lorg/bouncycastle/crypto/signers/DSAEncoding;

.field private final if:Landroid/support/v4/lq1;

.field private new:Landroid/support/v4/e40;

.field private try:Lorg/bouncycastle/math/ec/new;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/signers/break;->do:Lorg/bouncycastle/crypto/signers/break;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/this;-><init>(Lorg/bouncycastle/crypto/signers/DSAEncoding;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/signers/DSAEncoding;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/fl1;

    invoke-direct {v0}, Landroid/support/v4/fl1;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->do:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    new-instance v0, Landroid/support/v4/lq1;

    invoke-direct {v0}, Landroid/support/v4/lq1;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->for:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    return-void
.end method

.method private case([B)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    invoke-virtual {v0}, Landroid/support/v4/lq1;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/signers/this;->if(Lorg/bouncycastle/crypto/Digest;[B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/signers/this;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/signers/this;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/signers/this;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/signers/this;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->try:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/signers/this;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->try:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/signers/this;->do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    invoke-virtual {p1}, Landroid/support/v4/lq1;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/lq1;->doFinal([BI)I

    return-object p1
.end method

.method private do(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/for;)V
    .locals 2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/for;->try()[B

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private else(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/signers/this;->try()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/signers/this;->for([B)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/this;->case:Landroid/support/v4/s40;

    check-cast v4, Landroid/support/v4/k50;

    invoke-virtual {v4}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    invoke-virtual {v5}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-static {v5, p2, v4, v2}, Lorg/bouncycastle/math/ec/do;->return(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v3
.end method

.method private if(Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 2

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private try()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    invoke-virtual {v0}, Landroid/support/v4/lq1;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/lq1;->doFinal([BI)I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/this;->reset()V

    return-object v0
.end method


# virtual methods
.method public for([B)Ljava/math/BigInteger;
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public generateSignature()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/crypto/signers/this;->try()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    invoke-virtual {v1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/signers/this;->for([B)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/this;->case:Landroid/support/v4/s40;

    check-cast v2, Landroid/support/v4/h50;

    invoke-virtual {v2}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/this;->new()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/this;->do:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    invoke-virtual {v5}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->for:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    invoke-virtual {v1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0, v1, v5, v4}, Lorg/bouncycastle/crypto/signers/DSAEncoding;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v4/xs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to encode signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/xs;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_0
    throw v1

    :goto_1
    goto :goto_0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Landroid/support/v4/ac1;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/support/v4/ac1;

    invoke-virtual {p2}, Landroid/support/v4/ac1;->if()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v4/ac1;->do()[B

    move-result-object p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_0

    :cond_0
    const-string v0, "31323334353637383132333435363738"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/for;->if(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_2

    instance-of p1, p2, Landroid/support/v4/cc1;

    if-eqz p1, :cond_1

    check-cast p2, Landroid/support/v4/cc1;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/s40;

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->case:Landroid/support/v4/s40;

    invoke-virtual {p1}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/this;->do:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-virtual {p1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Landroid/support/v4/cc1;->if()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    goto :goto_1

    :cond_1
    check-cast p2, Landroid/support/v4/s40;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/this;->case:Landroid/support/v4/s40;

    invoke-virtual {p2}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    iget-object p2, p0, Lorg/bouncycastle/crypto/signers/this;->do:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-virtual {p1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/this;->new()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    invoke-virtual {p2}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/this;->case:Landroid/support/v4/s40;

    check-cast v1, Landroid/support/v4/h50;

    invoke-virtual {v1}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    goto :goto_2

    :cond_2
    check-cast p2, Landroid/support/v4/s40;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/this;->case:Landroid/support/v4/s40;

    invoke-virtual {p2}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->case:Landroid/support/v4/s40;

    check-cast p1, Landroid/support/v4/k50;

    invoke-virtual {p1}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->try:Lorg/bouncycastle/math/ec/new;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/this;->case([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/this;->else:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Landroid/support/v4/rg0;->update([BII)V

    return-void
.end method

.method public new()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    new-instance v0, Landroid/support/v4/ic0;

    invoke-direct {v0}, Landroid/support/v4/ic0;-><init>()V

    return-object v0
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    invoke-virtual {v0}, Landroid/support/v4/lq1;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->else:[B

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/rg0;->update([BII)V

    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    invoke-virtual {v0, p1}, Landroid/support/v4/rg0;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/this;->if:Landroid/support/v4/lq1;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/rg0;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/this;->for:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/this;->new:Landroid/support/v4/e40;

    invoke-virtual {v2}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lorg/bouncycastle/crypto/signers/DSAEncoding;->decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object p1

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/crypto/signers/this;->else(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method
