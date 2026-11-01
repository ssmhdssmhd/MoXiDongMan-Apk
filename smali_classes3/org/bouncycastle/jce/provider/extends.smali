.class public Lorg/bouncycastle/jce/provider/extends;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "SourceFile"


# instance fields
.field private do:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/for;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 5

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/for;->if()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/for;->for()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/for;->for()I

    move-result v2

    if-le v0, v2, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/do;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/do;-><init>()V

    new-instance v2, Lorg/bouncycastle/jce/provider/finally;

    invoke-direct {v2}, Lorg/bouncycastle/jce/provider/finally;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/for;->do()Lorg/bouncycastle/jcajce/new;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/new;->return()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/for;->do()Lorg/bouncycastle/jcajce/new;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/new;->native()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lorg/bouncycastle/jce/provider/try;->static(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Landroid/support/v4/a2; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/do;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v2, v0, p2}, Lorg/bouncycastle/jce/provider/finally;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object p2

    check-cast p2, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v2, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {p2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v3

    invoke-virtual {p2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v4

    invoke-virtual {p2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-direct {v2, v0, v3, v4, p2}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v2

    :catch_0
    move-exception p2

    new-instance v0, Landroid/support/v4/a2;

    const-string v2, "Certification path could not be validated."

    invoke-direct {v0, v2, p2}, Landroid/support/v4/a2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p2

    new-instance v0, Landroid/support/v4/a2;

    const-string v2, "Certification path could not be constructed from certificate list."

    invoke-direct {v0, v2, p2}, Landroid/support/v4/a2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/for;->do()Lorg/bouncycastle/jcajce/new;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/new;->const()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Landroid/support/v4/a2; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    sget-object v2, Lorg/bouncycastle/asn1/x509/if;->this:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/for;->do()Lorg/bouncycastle/jcajce/new;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/new;->while()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/try;->case([BLjava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/support/v4/a2; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_6
    .catch Landroid/support/v4/a2; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/for;->do()Lorg/bouncycastle/jcajce/new;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/new;->class()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lorg/bouncycastle/jce/provider/try;->for(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Landroid/support/v4/a2; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v2, p2, p3}, Lorg/bouncycastle/jce/provider/extends;->do(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/for;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance p2, Landroid/support/v4/a2;

    const-string v0, "No issuer certificate for certificate in certification path found."

    invoke-direct {p2, v0}, Landroid/support/v4/a2;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p2

    new-instance v0, Landroid/support/v4/a2;

    const-string v2, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v0, v2, p2}, Landroid/support/v4/a2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p2

    new-instance v0, Landroid/support/v4/a2;

    const-string v2, "No additional X.509 stores can be added from certificate locations."

    invoke-direct {v0, v2, p2}, Landroid/support/v4/a2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catch Landroid/support/v4/a2; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception p2

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/extends;->do:Ljava/lang/Exception;

    :cond_5
    if-nez v1, :cond_6

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    return-object v1

    :catch_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Exception creating support classes."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/jcajce/new$if;

    move-object v1, p1

    check-cast v1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/new$if;-><init>(Ljava/security/cert/PKIXParameters;)V

    instance-of v2, p1, Lorg/bouncycastle/x509/else;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/bouncycastle/x509/case;

    invoke-virtual {p1}, Lorg/bouncycastle/x509/else;->new()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jcajce/PKIXCertStore;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/jcajce/new$if;->const(Lorg/bouncycastle/jcajce/PKIXCertStore;)Lorg/bouncycastle/jcajce/new$if;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/jcajce/for$if;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/new$if;->throw()Lorg/bouncycastle/jcajce/new;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/for$if;-><init>(Lorg/bouncycastle/jcajce/new;)V

    invoke-virtual {p1}, Lorg/bouncycastle/x509/case;->default()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/jcajce/for$if;->new(Ljava/util/Set;)Lorg/bouncycastle/jcajce/for$if;

    invoke-virtual {p1}, Lorg/bouncycastle/x509/case;->extends()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jcajce/for$if;->case(I)Lorg/bouncycastle/jcajce/for$if;

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/jcajce/for$if;

    invoke-direct {p1, v1}, Lorg/bouncycastle/jcajce/for$if;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    move-object v1, p1

    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/for$if;->try()Lorg/bouncycastle/jcajce/for;

    move-result-object p1

    goto :goto_2

    :cond_2
    instance-of v0, p1, Lorg/bouncycastle/jcajce/for;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/bouncycastle/jcajce/for;

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/for;->do()Lorg/bouncycastle/jcajce/new;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/new;->public()Lorg/bouncycastle/jcajce/if;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/for;->do()Lorg/bouncycastle/jcajce/new;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/new;->const()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/try;->if(Lorg/bouncycastle/jcajce/if;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/for;->do()Lorg/bouncycastle/jcajce/new;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/new;->class()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/try;->if(Lorg/bouncycastle/jcajce/if;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/support/v4/a2; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v1, p1, v0}, Lorg/bouncycastle/jce/provider/extends;->do(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/for;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    goto :goto_3

    :cond_3
    if-nez v1, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/extends;->do:Ljava/lang/Exception;

    if-eqz p1, :cond_5

    instance-of p1, p1, Landroid/support/v4/a2;

    if-eqz p1, :cond_4

    new-instance p1, Ljava/security/cert/CertPathBuilderException;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/extends;->do:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/extends;->do:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/cert/CertPathBuilderException;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/extends;->do:Ljava/lang/Exception;

    const-string v1, "Possible certificate chain could not be validated."

    invoke-direct {p1, v1, v0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    if-nez v1, :cond_7

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/extends;->do:Ljava/lang/Exception;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/security/cert/CertPathBuilderException;

    const-string v0, "Unable to find certificate chain."

    invoke-direct {p1, v0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_4
    return-object v1

    :cond_8
    new-instance p1, Ljava/security/cert/CertPathBuilderException;

    const-string v0, "No certificate found matching targetContraints."

    invoke-direct {p1, v0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Landroid/support/v4/o90;

    const-string v1, "Error finding target certificate."

    invoke-direct {v0, v1, p1}, Landroid/support/v4/o90;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameters must be an instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/bouncycastle/jcajce/for;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method
