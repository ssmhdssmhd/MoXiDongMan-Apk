.class public Lorg/bouncycastle/jce/provider/throws;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    new-instance v0, Landroid/support/v4/w5;

    invoke-direct {v0}, Landroid/support/v4/w5;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/throws;->do:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p2, Lorg/bouncycastle/x509/else;

    if-nez v0, :cond_1

    instance-of v1, p2, Lorg/bouncycastle/jcajce/new;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parameters must be a "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lorg/bouncycastle/x509/else;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " instance."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    instance-of v5, p2, Ljava/security/cert/PKIXParameters;

    if-eqz v5, :cond_3

    new-instance v5, Lorg/bouncycastle/jcajce/new$if;

    move-object v6, p2

    check-cast v6, Ljava/security/cert/PKIXParameters;

    invoke-direct {v5, v6}, Lorg/bouncycastle/jcajce/new$if;-><init>(Ljava/security/cert/PKIXParameters;)V

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/x509/else;

    invoke-virtual {p2}, Lorg/bouncycastle/x509/else;->final()Z

    move-result v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/jcajce/new$if;->return(Z)Lorg/bouncycastle/jcajce/new$if;

    invoke-virtual {p2}, Lorg/bouncycastle/x509/else;->class()I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/jcajce/new$if;->static(I)Lorg/bouncycastle/jcajce/new$if;

    invoke-virtual {p2}, Lorg/bouncycastle/x509/else;->try()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/x509/else;->goto()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/x509/else;->else()Ljava/util/Set;

    move-result-object v3

    :cond_2
    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/new$if;->throw()Lorg/bouncycastle/jcajce/new;

    move-result-object p2

    goto :goto_1

    :cond_3
    check-cast p2, Lorg/bouncycastle/jcajce/new;

    :goto_1
    move-object v6, p2

    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/new;->public()Lorg/bouncycastle/jcajce/if;

    move-result-object p2

    instance-of v0, p2, Lorg/bouncycastle/x509/catch;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/bouncycastle/x509/catch;

    invoke-virtual {p2}, Lorg/bouncycastle/x509/catch;->case()Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v5

    invoke-static {v5, v6}, Lorg/bouncycastle/jce/provider/continue;->new(Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/jcajce/new;)Ljava/security/cert/CertPath;

    move-result-object p2

    invoke-static {p1, v6}, Lorg/bouncycastle/jce/provider/continue;->try(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/new;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-static {v7, v6}, Lorg/bouncycastle/jce/provider/continue;->case(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/new;)V

    invoke-static {v7, v4}, Lorg/bouncycastle/jce/provider/continue;->else(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    invoke-static {v5, v6}, Lorg/bouncycastle/jce/provider/continue;->goto(Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/jcajce/new;)V

    invoke-static {v5, p1, p2, v6, v1}, Lorg/bouncycastle/jce/provider/continue;->this(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/new;Ljava/util/Set;)V

    invoke-static {v5, v2, v3}, Lorg/bouncycastle/jce/provider/continue;->do(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/util/Set;Ljava/util/Set;)V

    const/4 p2, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v6, p2, v1}, Lorg/bouncycastle/jce/provider/try;->import(Lorg/bouncycastle/jcajce/new;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v8
    :try_end_0
    .catch Landroid/support/v4/a2; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lorg/bouncycastle/jce/provider/throws;->do:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/jce/provider/continue;->for(Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/jcajce/new;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Landroid/support/v4/p90;

    const-string v0, "Could not get validity date from attribute certificate."

    invoke-direct {p2, v0, p1}, Landroid/support/v4/p90;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TargetConstraints must be an instance of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lorg/bouncycastle/x509/catch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " class."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
