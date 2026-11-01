.class public Lorg/bouncycastle/jcajce/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/do$if;,
        Lorg/bouncycastle/jcajce/do$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/CRL;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Selector<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final case:Z

.field private final do:Ljava/security/cert/CRLSelector;

.field private final for:Z

.field private final if:Z

.field private final new:Ljava/math/BigInteger;

.field private final try:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/jcajce/do$if;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/jcajce/do$if;->do(Lorg/bouncycastle/jcajce/do$if;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/do;->do:Ljava/security/cert/CRLSelector;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/do$if;->if(Lorg/bouncycastle/jcajce/do$if;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/do;->if:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/do$if;->for(Lorg/bouncycastle/jcajce/do$if;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/do;->for:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/do$if;->new(Lorg/bouncycastle/jcajce/do$if;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/do;->new:Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/do$if;->try(Lorg/bouncycastle/jcajce/do$if;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/do;->try:[B

    invoke-static {p1}, Lorg/bouncycastle/jcajce/do$if;->case(Lorg/bouncycastle/jcajce/do$if;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/do;->case:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/jcajce/do$if;Lorg/bouncycastle/jcajce/do$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/do;-><init>(Lorg/bouncycastle/jcajce/do$if;)V

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/jcajce/do;)Ljava/security/cert/CRLSelector;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/do;->do:Ljava/security/cert/CRLSelector;

    return-object p0
.end method

.method public static if(Lorg/bouncycastle/jcajce/do;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jcajce/do;",
            "Ljava/security/cert/CertStore;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jcajce/do$for;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/do$for;-><init>(Lorg/bouncycastle/jcajce/do;)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/do;->for:Z

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public else()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/do;->if:Z

    return v0
.end method

.method public for()Ljava/security/cert/X509Certificate;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/do;->do:Ljava/security/cert/CRLSelector;

    instance-of v1, v0, Ljava/security/cert/X509CRLSelector;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public goto()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/do;->case:Z

    return v0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/security/cert/CRL;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/do;->match(Ljava/security/cert/CRL;)Z

    move-result p1

    return p1
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 4

    instance-of v0, p1, Ljava/security/cert/X509CRL;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/do;->do:Ljava/security/cert/CRLSelector;

    invoke-interface {v0, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result p1

    return p1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lorg/bouncycastle/asn1/x509/if;->super:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/do;->else()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/do;->case()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    return v2

    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/jcajce/do;->new:Ljava/math/BigInteger;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/jcajce/do;->new:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/do;->case:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/asn1/x509/if;->throw:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/do;->try:[B

    if-nez v1, :cond_6

    if-eqz v0, :cond_0

    return v2

    :cond_6
    invoke-static {v0, v1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    :catch_0
    return v2
.end method

.method public new()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/do;->try:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/do;->new:Ljava/math/BigInteger;

    return-object v0
.end method
