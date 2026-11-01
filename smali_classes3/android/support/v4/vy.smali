.class public Landroid/support/v4/vy;
.super Landroid/support/v4/g;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/crypto/tls/break;

.field public for:Lorg/bouncycastle/crypto/BasicAgreement;

.field public if:Landroid/support/v4/a4;

.field public new:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/break;Landroid/support/v4/a4;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/g;-><init>()V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/break;->case()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/support/v4/a4;->do()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Landroid/support/v4/pu;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/du;

    invoke-direct {v0}, Landroid/support/v4/du;-><init>()V

    iput-object v0, p0, Landroid/support/v4/vy;->for:Lorg/bouncycastle/crypto/BasicAgreement;

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/vy;->new:Z

    goto :goto_1

    :cond_0
    instance-of v0, p2, Landroid/support/v4/h50;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/x30;

    invoke-direct {v0}, Landroid/support/v4/x30;-><init>()V

    iput-object v0, p0, Landroid/support/v4/vy;->for:Lorg/bouncycastle/crypto/BasicAgreement;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iput-object p1, p0, Landroid/support/v4/vy;->do:Lorg/bouncycastle/crypto/tls/break;

    iput-object p2, p0, Landroid/support/v4/vy;->if:Landroid/support/v4/a4;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'privateKey\' type not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'privateKey\' must be private"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'privateKey\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public generateAgreement(Landroid/support/v4/a4;)[B
    .locals 2

    iget-object v0, p0, Landroid/support/v4/vy;->for:Lorg/bouncycastle/crypto/BasicAgreement;

    iget-object v1, p0, Landroid/support/v4/vy;->if:Landroid/support/v4/a4;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Landroid/support/v4/vy;->for:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object p1

    iget-boolean v0, p0, Landroid/support/v4/vy;->new:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/do;->if(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/vy;->for:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/do;->do(ILjava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public getCertificate()Lorg/bouncycastle/crypto/tls/break;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/vy;->do:Lorg/bouncycastle/crypto/tls/break;

    return-object v0
.end method
