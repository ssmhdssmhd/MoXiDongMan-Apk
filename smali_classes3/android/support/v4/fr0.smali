.class public Landroid/support/v4/fr0;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public case:Z

.field public do:Ljava/lang/Object;

.field public for:Ljava/lang/String;

.field public if:Landroid/support/v4/r40;

.field public new:Landroid/support/v4/q40;

.field public try:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "DSTU4145"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/fr0;->do:Ljava/lang/Object;

    new-instance v2, Landroid/support/v4/qv;

    invoke-direct {v2}, Landroid/support/v4/qv;-><init>()V

    iput-object v2, p0, Landroid/support/v4/fr0;->if:Landroid/support/v4/r40;

    iput-object v0, p0, Landroid/support/v4/fr0;->for:Ljava/lang/String;

    iput-object v1, p0, Landroid/support/v4/fr0;->try:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/fr0;->case:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    iget-boolean v0, p0, Landroid/support/v4/fr0;->case:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/fr0;->if:Landroid/support/v4/r40;

    invoke-virtual {v0}, Landroid/support/v4/r40;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/k50;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h50;

    iget-object v2, p0, Landroid/support/v4/fr0;->do:Ljava/lang/Object;

    instance-of v3, v2, Landroid/support/v4/d50;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/support/v4/d50;

    new-instance v3, Landroid/support/v4/q5;

    iget-object v4, p0, Landroid/support/v4/fr0;->for:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Landroid/support/v4/q5;-><init>(Ljava/lang/String;Landroid/support/v4/k50;Landroid/support/v4/d50;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v4, Landroid/support/v4/p5;

    iget-object v5, p0, Landroid/support/v4/fr0;->for:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v3, v2}, Landroid/support/v4/p5;-><init>(Ljava/lang/String;Landroid/support/v4/h50;Landroid/support/v4/q5;Landroid/support/v4/d50;)V

    invoke-direct {v1, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Landroid/support/v4/q5;

    iget-object v4, p0, Landroid/support/v4/fr0;->for:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Landroid/support/v4/q5;-><init>(Ljava/lang/String;Landroid/support/v4/k50;)V

    new-instance v1, Landroid/support/v4/p5;

    iget-object v4, p0, Landroid/support/v4/fr0;->for:Ljava/lang/String;

    invoke-direct {v1, v4, v0}, Landroid/support/v4/p5;-><init>(Ljava/lang/String;Landroid/support/v4/h50;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    :cond_1
    check-cast v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Landroid/support/v4/q5;

    iget-object v4, p0, Landroid/support/v4/fr0;->for:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Landroid/support/v4/q5;-><init>(Ljava/lang/String;Landroid/support/v4/k50;Ljava/security/spec/ECParameterSpec;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v4, Landroid/support/v4/p5;

    iget-object v5, p0, Landroid/support/v4/fr0;->for:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v3, v2}, Landroid/support/v4/p5;-><init>(Ljava/lang/String;Landroid/support/v4/h50;Landroid/support/v4/q5;Ljava/security/spec/ECParameterSpec;)V

    invoke-direct {v1, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DSTU Key Pair Generator not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    iput-object p2, p0, Landroid/support/v4/fr0;->try:Ljava/security/SecureRandom;

    iget-object p1, p0, Landroid/support/v4/fr0;->do:Ljava/lang/Object;

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/fr0;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "key size not configurable."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "unknown key size."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/d50;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v4/d50;

    iput-object p1, p0, Landroid/support/v4/fr0;->do:Ljava/lang/Object;

    new-instance p1, Landroid/support/v4/q40;

    new-instance v2, Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/d50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/d50;->new()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/d50;->for()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v2, p2}, Landroid/support/v4/q40;-><init>(Landroid/support/v4/e40;Ljava/security/SecureRandom;)V

    :goto_0
    iput-object p1, p0, Landroid/support/v4/fr0;->new:Landroid/support/v4/q40;

    iget-object p2, p0, Landroid/support/v4/fr0;->if:Landroid/support/v4/r40;

    invoke-virtual {p2, p1}, Landroid/support/v4/r40;->init(Landroid/support/v4/dr0;)V

    :goto_1
    iput-boolean v1, p0, Landroid/support/v4/fr0;->case:Z

    goto/16 :goto_5

    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Landroid/support/v4/fr0;->do:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/t30;->if(Ljava/security/spec/EllipticCurve;)Lorg/bouncycastle/math/ec/if;

    move-result-object p1

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {p1, v3, v2}, Landroid/support/v4/t30;->case(Lorg/bouncycastle/math/ec/if;Ljava/security/spec/ECPoint;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    instance-of v3, v0, Landroid/support/v4/sv;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Landroid/support/v4/sv;

    new-instance v4, Landroid/support/v4/q40;

    new-instance v5, Landroid/support/v4/tv;

    new-instance v6, Landroid/support/v4/e40;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v6, p1, v2, v7, v0}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Landroid/support/v4/sv;->do()[B

    move-result-object p1

    invoke-direct {v5, v6, p1}, Landroid/support/v4/tv;-><init>(Landroid/support/v4/e40;[B)V

    invoke-direct {v4, v5, p2}, Landroid/support/v4/q40;-><init>(Landroid/support/v4/e40;Ljava/security/SecureRandom;)V

    iput-object v4, p0, Landroid/support/v4/fr0;->new:Landroid/support/v4/q40;

    goto :goto_2

    :cond_1
    new-instance v3, Landroid/support/v4/q40;

    new-instance v4, Landroid/support/v4/e40;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, p1, v2, v5, v0}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, p2}, Landroid/support/v4/q40;-><init>(Landroid/support/v4/e40;Ljava/security/SecureRandom;)V

    iput-object v3, p0, Landroid/support/v4/fr0;->new:Landroid/support/v4/q40;

    :goto_2
    iget-object p1, p0, Landroid/support/v4/fr0;->if:Landroid/support/v4/r40;

    iget-object p2, p0, Landroid/support/v4/fr0;->new:Landroid/support/v4/q40;

    invoke-virtual {p1, p2}, Landroid/support/v4/r40;->init(Landroid/support/v4/dr0;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-nez v0, :cond_6

    instance-of v3, p1, Landroid/support/v4/w40;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    if-nez p1, :cond_4

    sget-object v0, Lorg/bouncycastle/jce/provider/do;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Landroid/support/v4/d50;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Landroid/support/v4/d50;

    move-result-object v0

    iput-object p1, p0, Landroid/support/v4/fr0;->do:Ljava/lang/Object;

    new-instance p1, Landroid/support/v4/q40;

    new-instance v2, Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/d50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/d50;->new()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/d50;->for()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v2, p2}, Landroid/support/v4/q40;-><init>(Landroid/support/v4/e40;Ljava/security/SecureRandom;)V

    goto/16 :goto_0

    :cond_4
    if-nez p1, :cond_5

    sget-object p2, Lorg/bouncycastle/jce/provider/do;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {p2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Landroid/support/v4/d50;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "null parameter passed but no implicitCA set"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parameter object not a ECParameterSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    check-cast p1, Landroid/support/v4/w40;

    invoke-virtual {p1}, Landroid/support/v4/w40;->do()Ljava/lang/String;

    move-result-object p1

    :goto_4
    move-object v4, p1

    new-instance p1, Lorg/bouncycastle/asn1/catch;

    invoke-direct {p1, v4}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/support/v4/rv;->do(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/e40;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v0, Landroid/support/v4/y40;

    invoke-virtual {p1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v6

    invoke-virtual {p1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1}, Landroid/support/v4/e40;->case()[B

    move-result-object v9

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroid/support/v4/y40;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v0, p0, Landroid/support/v4/fr0;->do:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/t30;->if(Ljava/security/spec/EllipticCurve;)Lorg/bouncycastle/math/ec/if;

    move-result-object p1

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {p1, v3, v2}, Landroid/support/v4/t30;->case(Lorg/bouncycastle/math/ec/if;Ljava/security/spec/ECPoint;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    new-instance v3, Landroid/support/v4/q40;

    new-instance v4, Landroid/support/v4/e40;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, p1, v2, v5, v0}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, p2}, Landroid/support/v4/q40;-><init>(Landroid/support/v4/e40;Ljava/security/SecureRandom;)V

    iput-object v3, p0, Landroid/support/v4/fr0;->new:Landroid/support/v4/q40;

    iget-object p1, p0, Landroid/support/v4/fr0;->if:Landroid/support/v4/r40;

    invoke-virtual {p1, v3}, Landroid/support/v4/r40;->init(Landroid/support/v4/dr0;)V

    goto/16 :goto_1

    :goto_5
    return-void

    :cond_8
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown curve name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method
