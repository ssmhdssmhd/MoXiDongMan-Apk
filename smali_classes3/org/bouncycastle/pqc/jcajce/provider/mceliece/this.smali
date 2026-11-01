.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/this;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/security/PrivateKey;)Landroid/support/v4/a4;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Landroid/support/v4/y5;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/y5;

    new-instance v8, Landroid/support/v4/gz0;

    invoke-virtual {p0}, Landroid/support/v4/y5;->getN()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/y5;->getK()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/y5;->getField()Landroid/support/v4/se0;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/y5;->getGoppaPoly()Landroid/support/v4/pe1;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v4/y5;->getP1()Landroid/support/v4/fd1;

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/v4/y5;->getP2()Landroid/support/v4/fd1;

    move-result-object v6

    invoke-virtual {p0}, Landroid/support/v4/y5;->getSInv()Landroid/support/v4/qe0;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/gz0;-><init>(IILandroid/support/v4/se0;Landroid/support/v4/pe1;Landroid/support/v4/fd1;Landroid/support/v4/fd1;Landroid/support/v4/qe0;)V

    return-object v8

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify McEliece private key."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static if(Ljava/security/PublicKey;)Landroid/support/v4/a4;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Landroid/support/v4/z5;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/z5;

    invoke-virtual {p0}, Landroid/support/v4/z5;->getKeyParams()Landroid/support/v4/a4;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t identify McEliece public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
