.class public Landroid/support/v4/sk1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/security/PrivateKey;)Landroid/support/v4/a4;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Landroid/support/v4/e6;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/e6;

    new-instance v7, Landroid/support/v4/wk1;

    invoke-virtual {p0}, Landroid/support/v4/e6;->getInvA1()[[S

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/e6;->getB1()[S

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/e6;->getInvA2()[[S

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/e6;->getB2()[S

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v4/e6;->getVi()[I

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/v4/e6;->getLayers()[Landroid/support/v4/ds0;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/wk1;-><init>([[S[S[[S[S[I[Landroid/support/v4/ds0;)V

    return-object v7

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify Rainbow private key."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static if(Ljava/security/PublicKey;)Landroid/support/v4/a4;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Landroid/support/v4/f6;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/f6;

    new-instance v0, Landroid/support/v4/zk1;

    invoke-virtual {p0}, Landroid/support/v4/f6;->getDocLength()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/f6;->getCoeffQuadratic()[[S

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/f6;->getCoeffSingular()[[S

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/f6;->getCoeffScalar()[S

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/support/v4/zk1;-><init>(I[[S[[S[S)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t identify Rainbow public key: "

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
