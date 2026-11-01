.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# static fields
.field private static case:Ljava/util/Hashtable;

.field private static else:Ljava/lang/Object;


# instance fields
.field public do:Landroid/support/v4/ju;

.field public for:I

.field public if:Lorg/bouncycastle/crypto/generators/new;

.field public new:Ljava/security/SecureRandom;

.field public try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->case:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->else:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "DH"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/generators/new;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/new;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->if:Lorg/bouncycastle/crypto/generators/new;

    const/16 v0, 0x800

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->for:I

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->new:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->try:Z

    return-void
.end method

.method private do(Ljava/security/SecureRandom;Ljavax/crypto/spec/DHParameterSpec;)Landroid/support/v4/ju;
    .locals 5

    instance-of v0, p2, Landroid/support/v4/eu;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/ju;

    check-cast p2, Landroid/support/v4/eu;

    invoke-virtual {p2}, Landroid/support/v4/eu;->do()Landroid/support/v4/ou;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/support/v4/ju;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/ou;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/ju;

    new-instance v1, Landroid/support/v4/ou;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p2

    invoke-direct {v1, v2, v3, v4, p2}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/ju;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/ou;)V

    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->try:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->for:I

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->case:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->case:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ju;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->do:Landroid/support/v4/ju;

    goto :goto_2

    :cond_0
    sget-object v1, Lorg/bouncycastle/jce/provider/do;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->for:I

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->new:Ljava/security/SecureRandom;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->do(Ljava/security/SecureRandom;Ljavax/crypto/spec/DHParameterSpec;)Landroid/support/v4/ju;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->else:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->case:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->case:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ju;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->do:Landroid/support/v4/ju;

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/bouncycastle/crypto/generators/else;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/generators/else;-><init>()V

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->for:I

    invoke-static {v3}, Landroid/support/v4/ff1;->do(I)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->new:Ljava/security/SecureRandom;

    invoke-virtual {v2, v3, v4, v5}, Lorg/bouncycastle/crypto/generators/else;->if(IILjava/security/SecureRandom;)V

    new-instance v3, Landroid/support/v4/ju;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->new:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/generators/else;->do()Landroid/support/v4/ou;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/support/v4/ju;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/ou;)V

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->do:Landroid/support/v4/ju;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->case:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->if:Lorg/bouncycastle/crypto/generators/new;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->do:Landroid/support/v4/ju;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/new;->init(Landroid/support/v4/dr0;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->try:Z

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->if:Lorg/bouncycastle/crypto/generators/new;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/new;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/ru;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/pu;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;

    invoke-direct {v3, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;-><init>(Landroid/support/v4/ru;)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/for;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/for;-><init>(Landroid/support/v4/pu;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->for:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->new:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->try:Z

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    :try_start_0
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->do(Ljava/security/SecureRandom;Ljavax/crypto/spec/DHParameterSpec;)Landroid/support/v4/ju;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->do:Landroid/support/v4/ju;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->if:Lorg/bouncycastle/crypto/generators/new;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/generators/new;->init(Landroid/support/v4/dr0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/this;->try:Z

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a DHParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
