.class public Landroid/support/v4/yg2;
.super Ljava/security/cert/X509CRLSelector;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private case:Lorg/bouncycastle/x509/X509AttributeCertificate;

.field private do:Z

.field private for:Ljava/math/BigInteger;

.field private if:Z

.field private new:[B

.field private try:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/yg2;->do:Z

    iput-boolean v0, p0, Landroid/support/v4/yg2;->if:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/yg2;->for:Ljava/math/BigInteger;

    iput-object v1, p0, Landroid/support/v4/yg2;->new:[B

    iput-boolean v0, p0, Landroid/support/v4/yg2;->try:Z

    return-void
.end method

.method public static if(Ljava/security/cert/X509CRLSelector;)Landroid/support/v4/yg2;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v4/yg2;

    invoke-direct {v0}, Landroid/support/v4/yg2;-><init>()V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setDateAndTime(Ljava/util/Date;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setIssuerNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setIssuers(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot create from null selector"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public break(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/yg2;->do:Z

    return-void
.end method

.method public case()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/yg2;->do:Z

    return v0
.end method

.method public catch([B)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/yg2;->new:[B

    return-void
.end method

.method public class(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/yg2;->try:Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Landroid/support/v4/yg2;->if(Ljava/security/cert/X509CRLSelector;)Landroid/support/v4/yg2;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v4/yg2;->do:Z

    iput-boolean v1, v0, Landroid/support/v4/yg2;->do:Z

    iget-boolean v1, p0, Landroid/support/v4/yg2;->if:Z

    iput-boolean v1, v0, Landroid/support/v4/yg2;->if:Z

    iget-object v1, p0, Landroid/support/v4/yg2;->for:Ljava/math/BigInteger;

    iput-object v1, v0, Landroid/support/v4/yg2;->for:Ljava/math/BigInteger;

    iget-object v1, p0, Landroid/support/v4/yg2;->case:Lorg/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Landroid/support/v4/yg2;->case:Lorg/bouncycastle/x509/X509AttributeCertificate;

    iget-boolean v1, p0, Landroid/support/v4/yg2;->try:Z

    iput-boolean v1, v0, Landroid/support/v4/yg2;->try:Z

    iget-object v1, p0, Landroid/support/v4/yg2;->new:[B

    invoke-static {v1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/yg2;->new:[B

    return-object v0
.end method

.method public const(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/yg2;->for:Ljava/math/BigInteger;

    return-void
.end method

.method public do()Lorg/bouncycastle/x509/X509AttributeCertificate;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yg2;->case:Lorg/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public else()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/yg2;->try:Z

    return v0
.end method

.method public for()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yg2;->new:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public goto(Lorg/bouncycastle/x509/X509AttributeCertificate;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/yg2;->case:Lorg/bouncycastle/x509/X509AttributeCertificate;

    return-void
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/security/cert/X509CRL;

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lorg/bouncycastle/asn1/x509/if;->super:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/support/v4/eh2;->do([B)Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/yg2;->case()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/yg2;->try()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Landroid/support/v4/yg2;->for:Ljava/math/BigInteger;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/yg2;->for:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/yg2;->try:Z

    if-eqz v0, :cond_6

    sget-object v0, Lorg/bouncycastle/asn1/x509/if;->throw:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/yg2;->new:[B

    if-nez v2, :cond_5

    if-eqz v0, :cond_6

    return v1

    :cond_5
    invoke-static {v0, v2}, Landroid/support/v4/q3;->case([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-super {p0, p1}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result p1

    return p1

    :catch_0
    return v1
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/yg2;->match(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public new()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yg2;->for:Ljava/math/BigInteger;

    return-object v0
.end method

.method public this(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/yg2;->if:Z

    return-void
.end method

.method public try()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/yg2;->if:Z

    return v0
.end method
