.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# static fields
.field private static this:Ljava/util/Hashtable;


# instance fields
.field public case:Z

.field public do:Landroid/support/v4/q40;

.field public else:Ljava/lang/String;

.field public for:Ljava/lang/Object;

.field public goto:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field public if:Landroid/support/v4/r40;

.field public new:I

.field public try:Ljava/security/SecureRandom;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->this:Ljava/util/Hashtable;

    const/16 v1, 0xc0

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime192v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->this:Ljava/util/Hashtable;

    const/16 v1, 0xef

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime239v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->this:Ljava/util/Hashtable;

    const/16 v1, 0x100

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime256v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->this:Ljava/util/Hashtable;

    const/16 v1, 0xe0

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-224"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->this:Ljava/util/Hashtable;

    const/16 v1, 0x180

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-384"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->this:Ljava/util/Hashtable;

    const/16 v1, 0x209

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-521"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EC"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/support/v4/r40;

    invoke-direct {v1}, Landroid/support/v4/r40;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->if:Landroid/support/v4/r40;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->for:Ljava/lang/Object;

    const/16 v1, 0xef

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->new:I

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->try:Ljava/security/SecureRandom;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->case:Z

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->else:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/jce/provider/do;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->goto:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/support/v4/r40;

    invoke-direct {v0}, Landroid/support/v4/r40;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->if:Landroid/support/v4/r40;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->for:Ljava/lang/Object;

    const/16 v0, 0xef

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->new:I

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->try:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->case:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->else:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->goto:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    return-void
.end method


# virtual methods
.method public do(Landroid/support/v4/d50;Ljava/security/SecureRandom;)Landroid/support/v4/q40;
    .locals 5

    new-instance v0, Landroid/support/v4/q40;

    new-instance v1, Landroid/support/v4/e40;

    invoke-virtual {p1}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/d50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/d50;->new()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/d50;->for()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, p2}, Landroid/support/v4/q40;-><init>(Landroid/support/v4/e40;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method public for(Ljava/lang/String;)Landroid/support/v4/y40;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/new;->new(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/a50;->new(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->goto:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/th2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown curve OID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown curve name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v7, 0x0

    new-instance v8, Landroid/support/v4/y40;

    invoke-virtual {v0}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/y40;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v8
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 9

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->case:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->new:I

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->initialize(ILjava/security/SecureRandom;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->if:Landroid/support/v4/r40;

    invoke-virtual {v0}, Landroid/support/v4/r40;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/k50;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/support/v4/h50;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->for:Ljava/lang/Object;

    instance-of v2, v0, Landroid/support/v4/d50;

    if-eqz v2, :cond_1

    move-object v6, v0

    check-cast v6, Landroid/support/v4/d50;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->else:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->goto:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v0, v2, v1, v6, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;-><init>(Ljava/lang/String;Landroid/support/v4/k50;Landroid/support/v4/d50;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v8, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->else:Ljava/lang/String;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->goto:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    move-object v2, v8

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;-><init>(Ljava/lang/String;Landroid/support/v4/h50;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;Landroid/support/v4/d50;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    invoke-direct {v1, v0, v8}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/security/KeyPair;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->else:Ljava/lang/String;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->goto:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v2, v3, v1, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;-><init>(Ljava/lang/String;Landroid/support/v4/k50;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->else:Ljava/lang/String;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->goto:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v1, v3, v4, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;-><init>(Ljava/lang/String;Landroid/support/v4/h50;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    invoke-direct {v0, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    :cond_2
    move-object v6, v0

    check-cast v6, Ljava/security/spec/ECParameterSpec;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->else:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->goto:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v0, v2, v1, v6, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;-><init>(Ljava/lang/String;Landroid/support/v4/k50;Ljava/security/spec/ECParameterSpec;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v8, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->else:Ljava/lang/String;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->goto:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    move-object v2, v8

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;-><init>(Ljava/lang/String;Landroid/support/v4/h50;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;Ljava/security/spec/ECParameterSpec;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    invoke-direct {v1, v0, v8}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public if(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Landroid/support/v4/q40;
    .locals 5

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/t30;->if(Ljava/security/spec/EllipticCurve;)Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/t30;->case(Lorg/bouncycastle/math/ec/if;Ljava/security/spec/ECPoint;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    new-instance v3, Landroid/support/v4/e40;

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance p1, Landroid/support/v4/q40;

    invoke-direct {p1, v3, p2}, Landroid/support/v4/q40;-><init>(Landroid/support/v4/e40;Ljava/security/SecureRandom;)V

    return-object p1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->new:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->try:Ljava/security/SecureRandom;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->this:Ljava/util/Hashtable;

    invoke-static {p1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->goto:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Landroid/support/v4/d50;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->for:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "null parameter passed but no implicitCA set"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of v0, p1, Landroid/support/v4/d50;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->for:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/d50;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->do(Landroid/support/v4/d50;Ljava/security/SecureRandom;)Landroid/support/v4/q40;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->do:Landroid/support/v4/q40;

    goto :goto_3

    :cond_2
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_3

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->for:Ljava/lang/Object;

    check-cast p1, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->if(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Landroid/support/v4/q40;

    move-result-object p1

    goto :goto_1

    :cond_3
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->new(Ljava/lang/String;Ljava/security/SecureRandom;)V

    goto :goto_3

    :cond_4
    instance-of v0, p1, Landroid/support/v4/w40;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/support/v4/w40;

    invoke-virtual {p1}, Landroid/support/v4/w40;->do()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->if:Landroid/support/v4/r40;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->do:Landroid/support/v4/q40;

    invoke-virtual {p1, p2}, Landroid/support/v4/r40;->init(Landroid/support/v4/dr0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->case:Z

    return-void

    :cond_5
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a ECParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public new(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->for(Ljava/lang/String;)Landroid/support/v4/y40;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->for:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->if(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Landroid/support/v4/q40;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/break$do;->do:Landroid/support/v4/q40;

    return-void
.end method
