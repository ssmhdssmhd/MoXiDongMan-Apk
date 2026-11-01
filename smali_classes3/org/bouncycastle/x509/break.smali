.class public Lorg/bouncycastle/x509/break;
.super Lorg/bouncycastle/x509/for;
.source "SourceFile"


# static fields
.field private static final continue:Ljava/lang/String;

.field private static final interface:Ljava/lang/String; = "org.bouncycastle.x509.CertPathReviewerMessages"

.field private static final strictfp:Ljava/lang/String;

.field private static final volatile:Ljava/lang/String;


# instance fields
.field private abstract:Z

.field public default:[Ljava/util/List;

.field public extends:[Ljava/util/List;

.field public finally:Ljava/security/cert/TrustAnchor;

.field public package:Ljava/security/PublicKey;

.field public private:Ljava/security/cert/PolicyNode;

.field public public:Ljava/security/cert/CertPath;

.field public return:Ljava/security/cert/PKIXParameters;

.field public static:Ljava/util/Date;

.field public switch:Ljava/util/List;

.field public throws:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/if;->continue:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/break;->continue:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/if;->native:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/break;->strictfp:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/if;->finally:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/break;->volatile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/x509/for;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fg;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/x509/for;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/x509/break;->l(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    return-void
.end method

.method private continue()V
    .locals 13

    const-string v0, "org.bouncycastle.x509.CertPathReviewerMessages"

    iget-object v1, p0, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v7, v6}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/support/v4/fg; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_1
    if-ltz v2, :cond_5

    iget-object v7, p0, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v9, Lorg/bouncycastle/x509/for;->else:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v9, Lorg/bouncycastle/x509/for;->if:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v9, Lorg/bouncycastle/x509/for;->new:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v9, Lorg/bouncycastle/x509/for;->goto:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v9, Lorg/bouncycastle/x509/for;->this:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v9, Lorg/bouncycastle/x509/for;->break:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v9, Lorg/bouncycastle/x509/for;->catch:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v9, Lorg/bouncycastle/x509/for;->for:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v9, Lorg/bouncycastle/x509/for;->try:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v9, Lorg/bouncycastle/x509/for;->case:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v9, Lorg/bouncycastle/x509/break;->continue:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0, v7, v2}, Lorg/bouncycastle/x509/break;->n(Ljava/security/cert/X509Certificate;I)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_1
    .catch Landroid/support/v4/fg; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v10, :cond_3

    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v10, v7, v8}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/support/v4/fg; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v7, Landroid/support/v4/g80;

    const-string v8, "CertPathReviewer.criticalExtensionError"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-direct {v7, v0, v8, v4}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/support/v4/fg;

    invoke-virtual {v1}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v0, v7, v1, v3, v2}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_3
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Landroid/support/v4/g80;

    const-string v9, "CertPathReviewer.unknownCriticalExt"

    new-array v10, v5, [Ljava/lang/Object;

    new-instance v11, Lorg/bouncycastle/asn1/catch;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    aput-object v11, v10, v6

    invoke-direct {v8, v0, v9, v10}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v8, v2}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v1

    new-instance v2, Landroid/support/v4/g80;

    const-string v7, "CertPathReviewer.certPathCheckerError"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-direct {v2, v0, v7, v4}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/support/v4/fg;

    invoke-direct {v0, v2, v1}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Landroid/support/v4/fg; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    invoke-virtual {v0}, Landroid/support/v4/nv0;->getErrorMessage()Landroid/support/v4/g80;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/fg;->getIndex()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    :cond_5
    return-void
.end method

.method private default([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private instanceof(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fg;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    const-string v3, "X.509"

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    move-object p1, v2

    :goto_1
    return-object p1

    :cond_2
    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Landroid/support/v4/g80;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Landroid/support/v4/uc2;

    invoke-direct {v5, p1}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x2

    aput-object v2, v4, p1

    const/4 p1, 0x3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    const-string p1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v0, "CertPathReviewer.loadCrlDistPointError"

    invoke-direct {v3, p1, v0, v4}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/support/v4/fg;

    invoke-direct {p1, v3}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw p1
.end method

.method private interface()V
    .locals 35

    move-object/from16 v1, p0

    const-string v2, "CertPathReviewer.policyExtError"

    iget-object v0, v1, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    iget v3, v1, Lorg/bouncycastle/x509/break;->throws:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v5, v3, [Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const-string v7, "2.5.29.32.0"

    invoke-interface {v11, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v15, Landroid/support/v4/za1;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v12, 0x0

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    const/16 v16, 0x0

    const-string v14, "2.5.29.32.0"

    move-object v8, v15

    move-object v4, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Landroid/support/v4/za1;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    aget-object v8, v5, v6

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v8}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    iget v8, v1, Lorg/bouncycastle/x509/break;->throws:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    :goto_1
    iget-object v10, v1, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v10}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    iget v10, v1, Lorg/bouncycastle/x509/break;->throws:I

    add-int/2addr v10, v9

    :goto_2
    iget-object v11, v1, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v11}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    iget v11, v1, Lorg/bouncycastle/x509/break;->throws:I

    add-int/2addr v11, v9

    :goto_3
    :try_start_0
    iget-object v12, v1, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12
    :try_end_0
    .catch Landroid/support/v4/fg; {:try_start_0 .. :try_end_0} :catch_9

    sub-int/2addr v12, v9

    move-object v15, v4

    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_4
    const-string v14, "CertPathReviewer.policyConstExtError"

    const-string v9, "org.bouncycastle.x509.CertPathReviewerMessages"

    if-ltz v12, :cond_2f

    :try_start_1
    iget v4, v1, Lorg/bouncycastle/x509/break;->throws:I

    sub-int/2addr v4, v12

    iget-object v6, v1, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Landroid/support/v4/fg; {:try_start_1 .. :try_end_1} :catch_9

    move/from16 v25, v3

    :try_start_2
    sget-object v3, Lorg/bouncycastle/x509/for;->if:Ljava/lang/String;

    invoke-static {v6, v3}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/super;
    :try_end_2
    .catch Landroid/support/v4/a2; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/support/v4/fg; {:try_start_2 .. :try_end_2} :catch_9

    move-object/from16 v26, v14

    const-string v14, "CertPathReviewer.policyQualifierError"

    if-eqz v3, :cond_18

    if-eqz v15, :cond_18

    :try_start_3
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v17

    move-object/from16 v27, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/support/v4/fe1;->new(Ljava/lang/Object;)Landroid/support/v4/fe1;

    move-result-object v18

    move-object/from16 v28, v15

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/fe1;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v15

    move-object/from16 v29, v2

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Landroid/support/v4/fg; {:try_start_3 .. :try_end_3} :catch_9

    if-nez v2, :cond_4

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/fe1;->case()Lorg/bouncycastle/asn1/super;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/x509/for;->catch(Lorg/bouncycastle/asn1/super;)Ljava/util/Set;

    move-result-object v2
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/support/v4/fg; {:try_start_4 .. :try_end_4} :catch_9

    :try_start_5
    invoke-static {v4, v5, v15, v2}, Lorg/bouncycastle/x509/for;->public(I[Ljava/util/List;Lorg/bouncycastle/asn1/catch;Ljava/util/Set;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static {v4, v5, v15, v2}, Lorg/bouncycastle/x509/for;->return(I[Ljava/util/List;Lorg/bouncycastle/asn1/catch;Ljava/util/Set;)V

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    invoke-direct {v2, v9, v14}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    iget-object v4, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_4
    :goto_6
    move-object/from16 v15, v28

    move-object/from16 v2, v29

    goto :goto_5

    :cond_5
    move-object/from16 v29, v2

    move-object/from16 v28, v15

    if-eqz v13, :cond_8

    invoke-interface {v13, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_8

    :cond_6
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    :goto_8
    move-object v13, v0

    :cond_9
    if-gtz v10, :cond_b

    iget v0, v1, Lorg/bouncycastle/x509/break;->throws:I

    if-ge v4, v0, :cond_a

    invoke-static {v6}, Lorg/bouncycastle/x509/for;->while(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_9

    :cond_a
    move/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 v30, v13

    goto/16 :goto_f

    :cond_b
    :goto_9
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/fe1;->new(Ljava/lang/Object;)Landroid/support/v4/fe1;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/fe1;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v15

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_5
    .catch Landroid/support/v4/fg; {:try_start_5 .. :try_end_5} :catch_9

    if-eqz v15, :cond_c

    :try_start_6
    invoke-virtual {v2}, Landroid/support/v4/fe1;->case()Lorg/bouncycastle/asn1/super;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/x509/for;->catch(Lorg/bouncycastle/asn1/super;)Ljava/util/Set;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/support/v4/fg; {:try_start_6 .. :try_end_6} :catch_9

    add-int/lit8 v2, v4, -0x1

    :try_start_7
    aget-object v2, v5, v2

    move-object/from16 v30, v13

    const/4 v15, 0x0

    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v15, v13, :cond_13

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/za1;

    invoke-virtual {v13}, Landroid/support/v4/za1;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_b
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v32, v2

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move/from16 v33, v10

    instance-of v10, v2, Ljava/lang/String;

    if-eqz v10, :cond_d

    check-cast v2, Ljava/lang/String;

    goto :goto_c

    :cond_d
    instance-of v10, v2, Lorg/bouncycastle/asn1/catch;

    if-eqz v10, :cond_11

    check-cast v2, Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-virtual {v13}, Landroid/support/v4/za1;->getChildren()Ljava/util/Iterator;

    move-result-object v10

    const/16 v17, 0x0

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/support/v4/za1;

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/za1;->getValidPolicy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/16 v17, 0x1

    :cond_e
    move-object/from16 v10, v19

    goto :goto_d

    :cond_f
    if-nez v17, :cond_10

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v34, v11

    new-instance v11, Landroid/support/v4/za1;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v24, 0x0

    move-object/from16 v17, v11

    move/from16 v19, v4

    move-object/from16 v20, v10

    move-object/from16 v21, v13

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v24}, Landroid/support/v4/za1;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v13, v11}, Landroid/support/v4/za1;->do(Landroid/support/v4/za1;)V

    aget-object v2, v5, v4

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    move/from16 v34, v11

    :goto_e
    move-object/from16 v2, v32

    move/from16 v10, v33

    move/from16 v11, v34

    goto :goto_b

    :cond_11
    move-object/from16 v2, v32

    move/from16 v10, v33

    goto :goto_b

    :cond_12
    move-object/from16 v32, v2

    move/from16 v33, v10

    move/from16 v34, v11

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a

    :cond_13
    move/from16 v33, v10

    move/from16 v34, v11

    goto :goto_f

    :catch_1
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    invoke-direct {v2, v9, v14}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    iget-object v4, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :goto_f
    add-int/lit8 v0, v4, -0x1

    move-object/from16 v15, v28

    :goto_10
    if-ltz v0, :cond_16

    aget-object v2, v5, v0

    const/4 v10, 0x0

    :goto_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_15

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/za1;

    invoke-virtual {v11}, Landroid/support/v4/za1;->for()Z

    move-result v13

    if-nez v13, :cond_14

    invoke-static {v15, v5, v11}, Lorg/bouncycastle/x509/for;->static(Landroid/support/v4/za1;[Ljava/util/List;Landroid/support/v4/za1;)Landroid/support/v4/za1;

    move-result-object v11

    move-object v15, v11

    if-nez v11, :cond_14

    goto :goto_12

    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_15
    :goto_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_16
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v2, Lorg/bouncycastle/x509/for;->if:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    aget-object v2, v5, v4

    const/4 v10, 0x0

    :goto_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_17

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/za1;

    invoke-virtual {v11, v0}, Landroid/support/v4/za1;->try(Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_17
    move-object/from16 v13, v30

    goto :goto_14

    :cond_18
    move-object/from16 v27, v0

    move-object/from16 v29, v2

    move/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 v28, v15

    move-object/from16 v15, v28

    :goto_14
    if-nez v3, :cond_19

    const/4 v15, 0x0

    :cond_19
    if-gtz v8, :cond_1b

    if-eqz v15, :cond_1a

    goto :goto_15

    :cond_1a
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.noValidPolicyTree"

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    invoke-direct {v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw v2

    :cond_1b
    :goto_15
    iget v0, v1, Lorg/bouncycastle/x509/break;->throws:I
    :try_end_7
    .catch Landroid/support/v4/fg; {:try_start_7 .. :try_end_7} :catch_9

    if-eq v4, v0, :cond_2d

    :try_start_8
    sget-object v0, Lorg/bouncycastle/x509/for;->new:Ljava/lang/String;

    invoke-static {v6, v0}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v0
    :try_end_8
    .catch Landroid/support/v4/a2; {:try_start_8 .. :try_end_8} :catch_6
    .catch Landroid/support/v4/fg; {:try_start_8 .. :try_end_8} :catch_9

    if-eqz v0, :cond_1e

    :try_start_9
    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/asn1/super;

    const/4 v3, 0x0

    :goto_16
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v10

    if-ge v3, v10, :cond_1e

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/super;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    check-cast v17, Lorg/bouncycastle/asn1/catch;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/catch;

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_9
    .catch Landroid/support/v4/fg; {:try_start_9 .. :try_end_9} :catch_9

    move-object/from16 v17, v2

    const-string v2, "CertPathReviewer.invalidPolicyMapping"

    if-nez v11, :cond_1d

    :try_start_a
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v17

    goto :goto_16

    :cond_1c
    new-instance v0, Landroid/support/v4/g80;

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    iget-object v3, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_1d
    new-instance v0, Landroid/support/v4/g80;

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    iget-object v3, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_1e
    if-eqz v0, :cond_23

    check-cast v0, Lorg/bouncycastle/asn1/super;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v10, 0x0

    :goto_17
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v11

    if-ge v10, v11, :cond_20

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/super;

    move-object/from16 v17, v0

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v18

    check-cast v18, Lorg/bouncycastle/asn1/catch;

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v13

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1f

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1f
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_18
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v17

    move-object/from16 v13, v18

    goto :goto_17

    :cond_20
    move-object/from16 v18, v13

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_a
    .catch Landroid/support/v4/fg; {:try_start_a .. :try_end_a} :catch_9

    if-lez v34, :cond_21

    :try_start_b
    invoke-static {v4, v5, v3, v2, v6}, Lorg/bouncycastle/x509/for;->import(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    :try_end_b
    .catch Landroid/support/v4/a2; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_b .. :try_end_b} :catch_2
    .catch Landroid/support/v4/fg; {:try_start_b .. :try_end_b} :catch_9

    move-object/from16 v10, v29

    goto :goto_1a

    :catch_2
    move-exception v0

    move-object v2, v0

    :try_start_c
    new-instance v0, Landroid/support/v4/g80;

    invoke-direct {v0, v9, v14}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    iget-object v4, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v3, v0, v2, v4, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_3
    move-exception v0

    move-object v2, v0

    new-instance v0, Landroid/support/v4/g80;

    move-object/from16 v10, v29

    invoke-direct {v0, v9, v10}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    iget-object v4, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v3, v0, v2, v4, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_21
    move-object/from16 v10, v29

    if-gtz v34, :cond_22

    invoke-static {v4, v5, v3, v15}, Lorg/bouncycastle/x509/for;->native(I[Ljava/util/List;Ljava/lang/String;Landroid/support/v4/za1;)Landroid/support/v4/za1;

    move-result-object v15

    :cond_22
    :goto_1a
    move-object/from16 v29, v10

    goto :goto_19

    :cond_23
    move-object/from16 v18, v13

    :cond_24
    move-object/from16 v10, v29

    invoke-static {v6}, Lorg/bouncycastle/x509/for;->while(Ljava/security/cert/X509Certificate;)Z

    move-result v0
    :try_end_c
    .catch Landroid/support/v4/fg; {:try_start_c .. :try_end_c} :catch_9

    if-nez v0, :cond_28

    if-eqz v8, :cond_25

    add-int/lit8 v8, v8, -0x1

    :cond_25
    if-eqz v34, :cond_26

    add-int/lit8 v11, v34, -0x1

    goto :goto_1b

    :cond_26
    move/from16 v11, v34

    :goto_1b
    if-eqz v33, :cond_27

    add-int/lit8 v0, v33, -0x1

    goto :goto_1c

    :cond_27
    move/from16 v0, v33

    goto :goto_1c

    :cond_28
    move/from16 v0, v33

    move/from16 v11, v34

    :goto_1c
    :try_start_d
    sget-object v2, Lorg/bouncycastle/x509/for;->catch:Ljava/lang/String;

    invoke-static {v6, v2}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/super;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v2

    :cond_29
    :goto_1d
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v13, 0x1

    if-eq v4, v13, :cond_2a

    goto :goto_1d

    :cond_2a
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    if-ge v3, v11, :cond_29

    move v11, v3

    goto :goto_1d

    :cond_2b
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3
    :try_end_d
    .catch Landroid/support/v4/a2; {:try_start_d .. :try_end_d} :catch_5
    .catch Landroid/support/v4/fg; {:try_start_d .. :try_end_d} :catch_9

    if-ge v3, v8, :cond_29

    move v8, v3

    goto :goto_1d

    :cond_2c
    :try_start_e
    sget-object v2, Lorg/bouncycastle/x509/for;->goto:Ljava/lang/String;

    invoke-static {v6, v2}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/goto;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2
    :try_end_e
    .catch Landroid/support/v4/a2; {:try_start_e .. :try_end_e} :catch_4
    .catch Landroid/support/v4/fg; {:try_start_e .. :try_end_e} :catch_9

    if-ge v2, v0, :cond_2e

    move v0, v2

    goto :goto_1e

    :catch_4
    :try_start_f
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.policyInhibitExtError"

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    iget-object v3, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_5
    new-instance v0, Landroid/support/v4/g80;

    move-object/from16 v2, v26

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    iget-object v3, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_6
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    const-string v3, "CertPathReviewer.policyMapExtError"

    invoke-direct {v2, v9, v3}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    iget-object v4, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_2d
    move-object/from16 v18, v13

    move-object/from16 v10, v29

    move/from16 v0, v33

    move/from16 v11, v34

    :cond_2e
    :goto_1e
    add-int/lit8 v12, v12, -0x1

    move-object v4, v6

    move-object v2, v10

    move-object/from16 v13, v18

    move/from16 v3, v25

    const/4 v6, 0x0

    move v10, v0

    move-object/from16 v0, v27

    goto/16 :goto_4

    :catch_7
    move-exception v0

    move-object v10, v2

    new-instance v2, Landroid/support/v4/g80;

    invoke-direct {v2, v9, v10}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    iget-object v4, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_2f
    move-object/from16 v27, v0

    move/from16 v25, v3

    move-object v2, v14

    move-object/from16 v28, v15

    invoke-static {v4}, Lorg/bouncycastle/x509/for;->while(Ljava/security/cert/X509Certificate;)Z

    move-result v0
    :try_end_f
    .catch Landroid/support/v4/fg; {:try_start_f .. :try_end_f} :catch_9

    if-nez v0, :cond_30

    if-lez v8, :cond_30

    add-int/lit8 v8, v8, -0x1

    :cond_30
    :try_start_10
    sget-object v0, Lorg/bouncycastle/x509/for;->catch:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v0

    move v11, v8

    :cond_31
    :goto_1f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v4

    if-eqz v4, :cond_32

    const/4 v4, 0x0

    goto :goto_1f

    :cond_32
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3
    :try_end_10
    .catch Landroid/support/v4/a2; {:try_start_10 .. :try_end_10} :catch_8
    .catch Landroid/support/v4/fg; {:try_start_10 .. :try_end_10} :catch_9

    if-nez v3, :cond_31

    const/4 v11, 0x0

    goto :goto_1f

    :cond_33
    const/4 v4, 0x0

    move v8, v11

    goto :goto_20

    :cond_34
    const/4 v4, 0x0

    :goto_20
    const-string v0, "CertPathReviewer.explicitPolicy"

    if-nez v28, :cond_36

    :try_start_11
    iget-object v2, v1, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v2

    if-nez v2, :cond_35

    const/4 v15, 0x0

    goto/16 :goto_2d

    :cond_35
    new-instance v2, Landroid/support/v4/g80;

    invoke-direct {v2, v9, v0}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/support/v4/fg;

    iget-object v3, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v0, v2, v3, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_36
    invoke-static/range {v27 .. v27}, Lorg/bouncycastle/x509/for;->super(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v1, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v11, 0x0

    :goto_21
    move/from16 v3, v25

    if-ge v11, v3, :cond_39

    aget-object v2, v5, v11

    const/4 v6, 0x0

    :goto_22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_38

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/za1;

    invoke-virtual {v10}, Landroid/support/v4/za1;->getValidPolicy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-virtual {v10}, Landroid/support/v4/za1;->getChildren()Ljava/util/Iterator;

    move-result-object v10

    :goto_23
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_38
    add-int/lit8 v11, v11, 0x1

    move/from16 v25, v3

    goto :goto_21

    :cond_39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/za1;

    invoke-virtual {v2}, Landroid/support/v4/za1;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_3a
    iget v0, v1, Lorg/bouncycastle/x509/break;->throws:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move-object/from16 v15, v28

    :goto_25
    if-ltz v0, :cond_48

    aget-object v2, v5, v0

    const/4 v11, 0x0

    :goto_26
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_3c

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/za1;

    invoke-virtual {v3}, Landroid/support/v4/za1;->for()Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-static {v15, v5, v3}, Lorg/bouncycastle/x509/for;->static(Landroid/support/v4/za1;[Ljava/util/List;Landroid/support/v4/za1;)Landroid/support/v4/za1;

    move-result-object v15

    :cond_3b
    add-int/lit8 v11, v11, 0x1

    goto :goto_26

    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_3d
    new-instance v2, Landroid/support/v4/g80;

    invoke-direct {v2, v9, v0}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/support/v4/fg;

    iget-object v3, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v0, v2, v3, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_3e
    move-object/from16 v15, v28

    goto/16 :goto_2d

    :cond_3f
    move/from16 v3, v25

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v11, 0x0

    :goto_27
    if-ge v11, v3, :cond_43

    aget-object v2, v5, v11

    const/4 v6, 0x0

    :goto_28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_42

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/za1;

    invoke-virtual {v10}, Landroid/support/v4/za1;->getValidPolicy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_41

    invoke-virtual {v10}, Landroid/support/v4/za1;->getChildren()Ljava/util/Iterator;

    move-result-object v10

    :cond_40
    :goto_29
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_41

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/za1;

    invoke-virtual {v12}, Landroid/support/v4/za1;->getValidPolicy()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_40

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_42
    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    :cond_43
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v15, v28

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/za1;

    invoke-virtual {v2}, Landroid/support/v4/za1;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v27

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    invoke-static {v15, v5, v2}, Lorg/bouncycastle/x509/for;->static(Landroid/support/v4/za1;[Ljava/util/List;Landroid/support/v4/za1;)Landroid/support/v4/za1;

    move-result-object v2

    move-object v15, v2

    :cond_44
    move-object/from16 v27, v6

    goto :goto_2a

    :cond_45
    if-eqz v15, :cond_48

    iget v0, v1, Lorg/bouncycastle/x509/break;->throws:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_2b
    if-ltz v0, :cond_48

    aget-object v2, v5, v0

    const/4 v11, 0x0

    :goto_2c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_47

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/za1;

    invoke-virtual {v3}, Landroid/support/v4/za1;->for()Z

    move-result v6

    if-nez v6, :cond_46

    invoke-static {v15, v5, v3}, Lorg/bouncycastle/x509/for;->static(Landroid/support/v4/za1;[Ljava/util/List;Landroid/support/v4/za1;)Landroid/support/v4/za1;

    move-result-object v15

    :cond_46
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :cond_48
    :goto_2d
    if-gtz v8, :cond_4a

    if-eqz v15, :cond_49

    goto :goto_2e

    :cond_49
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.invalidPolicy"

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    invoke-direct {v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw v2

    :catch_8
    new-instance v0, Landroid/support/v4/g80;

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    iget-object v3, v1, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v12}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/security/cert/CertPath;I)V

    throw v2
    :try_end_11
    .catch Landroid/support/v4/fg; {:try_start_11 .. :try_end_11} :catch_9

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/support/v4/nv0;->getErrorMessage()Landroid/support/v4/g80;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/fg;->getIndex()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    :cond_4a
    :goto_2e
    return-void
.end method

.method private n(Ljava/security/cert/X509Certificate;I)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lorg/bouncycastle/x509/break;->continue:Ljava/lang/String;

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/super;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/zg1;->new(Ljava/lang/Object;)Landroid/support/v4/zg1;

    move-result-object v7

    sget-object v9, Lorg/bouncycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers;->id_etsi_qcs_QcCompliance:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v7}, Landroid/support/v4/zg1;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v7, Landroid/support/v4/g80;

    const-string v8, "CertPathReviewer.QcEuCompliance"

    invoke-direct {v7, v2, v8}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v7, v1}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V

    goto/16 :goto_3

    :cond_0
    sget-object v9, Lorg/bouncycastle/asn1/x509/qualified/RFC3739QCObjectIdentifiers;->id_qcs_pkixQCSyntax_v1:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v7}, Landroid/support/v4/zg1;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v9, Lorg/bouncycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers;->id_etsi_qcs_QcSSCD:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v7}, Landroid/support/v4/zg1;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v7, Landroid/support/v4/g80;

    const-string v8, "CertPathReviewer.QcSSCD"

    invoke-direct {v7, v2, v8}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v9, Lorg/bouncycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers;->id_etsi_qcs_LimiteValue:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v7}, Landroid/support/v4/zg1;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Landroid/support/v4/zg1;->case()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/i01;->else(Ljava/lang/Object;)Landroid/support/v4/i01;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/i01;->try()Landroid/support/v4/zn0;

    invoke-virtual {v7}, Landroid/support/v4/i01;->new()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v11

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    invoke-virtual {v7}, Landroid/support/v4/i01;->case()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v8

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v11, v11, v8

    invoke-virtual {v7}, Landroid/support/v4/i01;->try()Landroid/support/v4/zn0;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/zn0;->else()Z

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_3

    new-instance v8, Landroid/support/v4/g80;

    const-string v13, "CertPathReviewer.QcLimitValueAlpha"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/support/v4/i01;->try()Landroid/support/v4/zn0;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/zn0;->new()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v3

    new-instance v14, Landroid/support/v4/b92;

    new-instance v15, Ljava/lang/Double;

    invoke-direct {v15, v11, v12}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v14, v15}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v11, 0x1

    aput-object v14, v9, v11

    aput-object v7, v9, v10

    invoke-direct {v8, v2, v13, v9}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance v8, Landroid/support/v4/g80;

    const-string v13, "CertPathReviewer.QcLimitValueNum"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/support/v4/i01;->try()Landroid/support/v4/zn0;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/zn0;->case()I

    move-result v14

    invoke-static {v14}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v3

    new-instance v14, Landroid/support/v4/b92;

    new-instance v15, Ljava/lang/Double;

    invoke-direct {v15, v11, v12}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v14, v15}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v11, 0x1

    aput-object v14, v9, v11

    aput-object v7, v9, v10

    invoke-direct {v8, v2, v13, v9}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v0, v8, v1}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V

    goto :goto_3

    :cond_4
    new-instance v6, Landroid/support/v4/g80;

    const-string v8, "CertPathReviewer.QcUnknownStatement"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/support/v4/zg1;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v10

    aput-object v10, v9, v3

    new-instance v10, Landroid/support/v4/uc2;

    invoke-direct {v10, v7}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x1

    aput-object v10, v9, v7

    invoke-direct {v6, v2, v8, v9}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v1}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V
    :try_end_0
    .catch Landroid/support/v4/a2; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x1

    xor-int/2addr v1, v6

    return v1

    :catch_0
    new-instance v4, Landroid/support/v4/g80;

    const-string v5, "CertPathReviewer.QcStatementExtError"

    invoke-direct {v4, v2, v5}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    return v3
.end method

.method private strictfp()V
    .locals 10

    new-instance v0, Lorg/bouncycastle/jce/provider/package;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/package;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lez v1, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-static {v3}, Lorg/bouncycastle/x509/for;->while(Ljava/security/cert/X509Certificate;)Z

    move-result v4
    :try_end_0
    .catch Landroid/support/v4/fg; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v5, 0x0

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    if-nez v4, :cond_0

    :try_start_1
    invoke-static {v3}, Lorg/bouncycastle/x509/for;->const(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    new-instance v7, Lorg/bouncycastle/asn1/else;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Landroid/support/v4/fg; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/super;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/support/v4/fg; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    invoke-virtual {v0, v7}, Lorg/bouncycastle/jce/provider/package;->catch(Lorg/bouncycastle/asn1/super;)V
    :try_end_3
    .catch Landroid/support/v4/ya1; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/support/v4/fg; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    invoke-virtual {v0, v7}, Lorg/bouncycastle/jce/provider/package;->new(Lorg/bouncycastle/asn1/super;)V
    :try_end_4
    .catch Landroid/support/v4/ya1; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/support/v4/fg; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    sget-object v4, Lorg/bouncycastle/x509/for;->try:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/super;
    :try_end_5
    .catch Landroid/support/v4/a2; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/support/v4/fg; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v4, :cond_0

    const/4 v7, 0x0

    :goto_1
    :try_start_6
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object v8
    :try_end_6
    .catch Landroid/support/v4/fg; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    invoke-virtual {v0, v8}, Lorg/bouncycastle/jce/provider/package;->this(Landroid/support/v4/tg0;)V

    invoke-virtual {v0, v8}, Lorg/bouncycastle/jce/provider/package;->if(Landroid/support/v4/tg0;)V
    :try_end_7
    .catch Landroid/support/v4/ya1; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/support/v4/fg; {:try_start_7 .. :try_end_7} :catch_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_8
    new-instance v3, Landroid/support/v4/g80;

    const-string v4, "CertPathReviewer.notPermittedEmail"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v7, Landroid/support/v4/uc2;

    invoke-direct {v7, v8}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    aput-object v7, v2, v5

    invoke-direct {v3, v6, v4, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/support/v4/fg;

    iget-object v4, p0, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    const-string v3, "CertPathReviewer.subjAltNameExtError"

    invoke-direct {v2, v6, v3}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    iget-object v4, p0, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_2
    move-exception v0

    new-instance v3, Landroid/support/v4/g80;

    const-string v7, "CertPathReviewer.excludedDN"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v8, Landroid/support/v4/uc2;

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    aput-object v8, v2, v5

    invoke-direct {v3, v6, v7, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/support/v4/fg;

    iget-object v4, p0, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v3, Landroid/support/v4/g80;

    const-string v7, "CertPathReviewer.notPermittedDN"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v8, Landroid/support/v4/uc2;

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    aput-object v8, v2, v5

    invoke-direct {v3, v6, v7, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/support/v4/fg;

    iget-object v4, p0, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_4
    move-exception v0

    new-instance v3, Landroid/support/v4/g80;

    const-string v7, "CertPathReviewer.ncSubjectNameError"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v8, Landroid/support/v4/uc2;

    invoke-direct {v8, v4}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    aput-object v8, v2, v5

    invoke-direct {v3, v6, v7, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/support/v4/fg;

    iget-object v4, p0, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2
    :try_end_8
    .catch Landroid/support/v4/fg; {:try_start_8 .. :try_end_8} :catch_6

    :cond_0
    :try_start_9
    sget-object v4, Lorg/bouncycastle/x509/for;->case:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/super;
    :try_end_9
    .catch Landroid/support/v4/a2; {:try_start_9 .. :try_end_9} :catch_5
    .catch Landroid/support/v4/fg; {:try_start_9 .. :try_end_9} :catch_6

    if-eqz v3, :cond_2

    :try_start_a
    invoke-static {v3}, Landroid/support/v4/b21;->else(Ljava/lang/Object;)Landroid/support/v4/b21;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/b21;->goto()[Landroid/support/v4/wg0;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/jce/provider/package;->strictfp([Landroid/support/v4/wg0;)V

    :cond_1
    invoke-virtual {v3}, Landroid/support/v4/b21;->case()[Landroid/support/v4/wg0;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_2
    array-length v4, v3

    if-eq v5, v4, :cond_2

    aget-object v4, v3, v5

    invoke-virtual {v0, v4}, Lorg/bouncycastle/jce/provider/package;->do(Landroid/support/v4/wg0;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :catch_5
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    const-string v3, "CertPathReviewer.ncExtError"

    invoke-direct {v2, v6, v3}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    iget-object v4, p0, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
    :try_end_a
    .catch Landroid/support/v4/fg; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/support/v4/nv0;->getErrorMessage()Landroid/support/v4/g80;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/fg;->getIndex()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    :cond_3
    return-void
.end method

.method private transient()V
    .locals 20

    move-object/from16 v10, p0

    new-instance v0, Landroid/support/v4/g80;

    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/Object;

    new-instance v2, Landroid/support/v4/b92;

    iget-object v3, v10, Lorg/bouncycastle/x509/break;->static:Ljava/util/Date;

    invoke-direct {v2, v3}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x0

    aput-object v2, v1, v12

    new-instance v2, Landroid/support/v4/b92;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v2, v3}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x1

    aput-object v2, v1, v13

    const-string v14, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.certPathValidDate"

    invoke-direct {v0, v14, v2, v1}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/break;->package(Landroid/support/v4/g80;)V

    :try_start_0
    iget-object v0, v10, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iget-object v1, v10, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/bouncycastle/x509/break;->k(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-le v2, v13, :cond_0

    new-instance v2, Landroid/support/v4/g80;

    const-string v3, "CertPathReviewer.conflictingTrustAnchors"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v12

    new-instance v1, Landroid/support/v4/uc2;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    aput-object v1, v4, v13

    invoke-direct {v2, v14, v3, v4}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/x509/break;->extends(Landroid/support/v4/g80;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.noTrustAnchorFound"

    new-array v3, v11, [Ljava/lang/Object;

    new-instance v4, Landroid/support/v4/uc2;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, v12

    iget-object v0, v10, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v13

    invoke-direct {v1, v14, v2, v3}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, Lorg/bouncycastle/x509/break;->extends(Landroid/support/v4/g80;)V

    :goto_0
    const/4 v1, 0x0

    goto :goto_4

    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Landroid/support/v4/fg; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v2
    :try_end_1
    .catch Landroid/support/v4/fg; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v3, v10, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v3}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/x509/for;->throws(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    :try_start_3
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.trustButInvalidCert"

    invoke-direct {v0, v14, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/break;->extends(Landroid/support/v4/g80;)V
    :try_end_3
    .catch Landroid/support/v4/fg; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :goto_2
    new-instance v2, Landroid/support/v4/g80;

    new-array v3, v11, [Ljava/lang/Object;

    new-instance v4, Landroid/support/v4/uc2;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, v12

    new-instance v4, Landroid/support/v4/uc2;

    invoke-direct {v4, v0}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, v13

    const-string v0, "CertPathReviewer.unknown"

    invoke-direct {v2, v14, v0, v3}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/x509/break;->extends(Landroid/support/v4/g80;)V

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0}, Landroid/support/v4/nv0;->getErrorMessage()Landroid/support/v4/g80;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/break;->extends(Landroid/support/v4/g80;)V

    :catch_3
    :goto_4
    move-object v9, v1

    const/16 v16, 0x5

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-static {v0}, Lorg/bouncycastle/x509/for;->const(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    goto :goto_5

    :cond_3
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    new-instance v1, Landroid/support/v4/g80;

    new-array v2, v13, [Ljava/lang/Object;

    new-instance v3, Landroid/support/v4/uc2;

    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v12

    const-string v3, "CertPathReviewer.trustDNInvalid"

    invoke-direct {v1, v14, v3, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, Lorg/bouncycastle/x509/break;->extends(Landroid/support/v4/g80;)V

    const/4 v1, 0x0

    :goto_5
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_5

    aget-boolean v0, v0, v16

    if-nez v0, :cond_5

    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.trustKeyUsage"

    invoke-direct {v0, v14, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/break;->package(Landroid/support/v4/g80;)V

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_7

    :cond_6
    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    :goto_7
    :try_start_5
    invoke-static {v2}, Lorg/bouncycastle/x509/for;->new(Ljava/security/PublicKey;)Landroid/support/v4/b1;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v3}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    :catch_5
    new-instance v3, Landroid/support/v4/g80;

    const-string v4, "CertPathReviewer.trustPubKeyError"

    invoke-direct {v3, v14, v4}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Lorg/bouncycastle/x509/break;->extends(Landroid/support/v4/g80;)V

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_8
    iget-object v3, v10, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v13

    move-object v5, v0

    move-object v8, v1

    move-object v7, v2

    move v6, v3

    :goto_9
    if-ltz v6, :cond_17

    iget v0, v10, Lorg/bouncycastle/x509/break;->throws:I

    sub-int v4, v0, v6

    iget-object v0, v10, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/security/cert/X509Certificate;

    const-string v1, "CertPathReviewer.signatureNotVerified"

    const/4 v2, 0x3

    if-eqz v7, :cond_8

    :try_start_6
    iget-object v0, v10, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v7, v0}, Lorg/bouncycastle/x509/for;->throws(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_b

    :catch_6
    move-exception v0

    new-instance v15, Landroid/support/v4/g80;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v12

    aput-object v0, v2, v13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v11

    invoke-direct {v15, v14, v1, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a
    invoke-virtual {v10, v15, v6}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    goto/16 :goto_b

    :cond_8
    invoke-static {v3}, Lorg/bouncycastle/x509/for;->while(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_7
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v15, v10, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v15}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v0, v15}, Lorg/bouncycastle/x509/for;->throws(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V

    new-instance v0, Landroid/support/v4/g80;

    const-string v15, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"

    invoke-direct {v0, v14, v15}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v6}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_b

    :catch_7
    move-exception v0

    new-instance v15, Landroid/support/v4/g80;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v12

    aput-object v0, v2, v13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v11

    invoke-direct {v15, v14, v1, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_9
    new-instance v0, Landroid/support/v4/g80;

    const-string v1, "CertPathReviewer.NoIssuerPublicKey"

    invoke-direct {v0, v14, v1}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/bouncycastle/asn1/x509/if;->static:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/c5;->else(Ljava/lang/Object;)Landroid/support/v4/c5;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/c5;->try()Landroid/support/v4/ug0;

    move-result-object v15

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Landroid/support/v4/ug0;->goto()[Landroid/support/v4/tg0;

    move-result-object v15

    aget-object v15, v15, v12

    invoke-virtual {v1}, Landroid/support/v4/c5;->case()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v11, Landroid/support/v4/mv0;

    const-string v13, "missingIssuer"

    invoke-direct {v11, v14, v13}, Landroid/support/v4/mv0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v2, v12

    const-string v11, " \""

    const/4 v13, 0x1

    aput-object v11, v2, v13

    const/4 v11, 0x2

    aput-object v15, v2, v11

    const-string v11, "\" "

    const/4 v13, 0x3

    aput-object v11, v2, v13

    const/4 v11, 0x4

    new-instance v13, Landroid/support/v4/mv0;

    const-string v15, "missingSerial"

    invoke-direct {v13, v14, v15}, Landroid/support/v4/mv0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v2, v11

    const-string v11, " "

    aput-object v11, v2, v16

    const/4 v11, 0x6

    aput-object v1, v2, v11

    invoke-virtual {v0, v2}, Landroid/support/v4/ov0;->class([Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v10, v0, v6}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    :goto_b
    :try_start_8
    iget-object v0, v10, Lorg/bouncycastle/x509/break;->static:Ljava/util/Date;

    invoke-virtual {v3, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_8
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_d

    :catch_8
    new-instance v0, Landroid/support/v4/g80;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v11, Landroid/support/v4/b92;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    aput-object v11, v2, v12

    const-string v11, "CertPathReviewer.certificateExpired"

    invoke-direct {v0, v14, v11, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :catch_9
    const/4 v1, 0x1

    new-instance v0, Landroid/support/v4/g80;

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Landroid/support/v4/b92;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    aput-object v1, v2, v12

    const-string v1, "CertPathReviewer.certificateNotYetValid"

    invoke-direct {v0, v14, v1, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_c
    invoke-virtual {v10, v0, v6}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    :goto_d
    iget-object v0, v10, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_9
    sget-object v0, Lorg/bouncycastle/x509/break;->strictfp:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/support/v4/ye;->case(Ljava/lang/Object;)Landroid/support/v4/ye;

    move-result-object v0
    :try_end_9
    .catch Landroid/support/v4/a2; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_f

    :cond_b
    :goto_e
    const/4 v0, 0x0

    goto :goto_f

    :catch_a
    new-instance v0, Landroid/support/v4/g80;

    const-string v1, "CertPathReviewer.crlDistPtExtError"

    invoke-direct {v0, v14, v1}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v6}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    goto :goto_e

    :goto_f
    :try_start_a
    sget-object v1, Lorg/bouncycastle/x509/break;->volatile:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Landroid/support/v4/b5;->case(Ljava/lang/Object;)Landroid/support/v4/b5;

    move-result-object v1
    :try_end_a
    .catch Landroid/support/v4/a2; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    new-instance v1, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.crlAuthInfoAccError"

    invoke-direct {v1, v14, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1, v6}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    :cond_c
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/break;->synchronized(Landroid/support/v4/ye;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v10, v1}, Lorg/bouncycastle/x509/break;->g(Landroid/support/v4/b5;)Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Landroid/support/v4/g80;

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    new-instance v13, Landroid/support/v4/vc2;

    move-object/from16 v17, v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/support/v4/vc2;-><init>(Ljava/lang/Object;)V

    aput-object v13, v15, v12

    const-string v3, "CertPathReviewer.crlDistPoint"

    invoke-direct {v2, v14, v3, v15}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v2, v6}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V

    move-object/from16 v3, v17

    goto :goto_11

    :cond_d
    move-object/from16 v17, v3

    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Landroid/support/v4/g80;

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Object;

    new-instance v3, Landroid/support/v4/vc2;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v3, v15}, Landroid/support/v4/vc2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v13, v12

    const-string v3, "CertPathReviewer.ocspLocation"

    invoke-direct {v2, v14, v3, v13}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v2, v6}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V

    goto :goto_12

    :cond_e
    :try_start_b
    iget-object v2, v10, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    iget-object v13, v10, Lorg/bouncycastle/x509/break;->static:Ljava/util/Date;
    :try_end_b
    .catch Landroid/support/v4/fg; {:try_start_b .. :try_end_b} :catch_d

    move-object/from16 v1, p0

    move-object/from16 v15, v17

    move-object v3, v15

    move/from16 v18, v4

    move-object v4, v13

    move v13, v6

    move-object v6, v7

    move-object/from16 v19, v7

    move-object v7, v0

    move-object v12, v8

    move-object v8, v11

    move-object v11, v9

    move v9, v13

    :try_start_c
    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/x509/break;->protected(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    :try_end_c
    .catch Landroid/support/v4/fg; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    goto :goto_13

    :catch_d
    move-exception v0

    move/from16 v18, v4

    move v13, v6

    move-object/from16 v19, v7

    move-object v12, v8

    move-object v11, v9

    move-object/from16 v15, v17

    :goto_13
    invoke-virtual {v0}, Landroid/support/v4/nv0;->getErrorMessage()Landroid/support/v4/g80;

    move-result-object v0

    invoke-virtual {v10, v0, v13}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    goto :goto_14

    :cond_f
    move-object v15, v3

    move/from16 v18, v4

    move v13, v6

    move-object/from16 v19, v7

    move-object v12, v8

    move-object v11, v9

    :goto_14
    if-eqz v12, :cond_10

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Landroid/support/v4/g80;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "CertPathReviewer.certWrongIssuer"

    invoke-direct {v0, v14, v3, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v0, v13}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    goto :goto_15

    :cond_10
    const/4 v1, 0x2

    const/4 v4, 0x0

    :goto_15
    iget v0, v10, Lorg/bouncycastle/x509/break;->throws:I

    move/from16 v2, v18

    if-eq v2, v0, :cond_15

    const-string v0, "CertPathReviewer.noCACert"

    if-eqz v15, :cond_11

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    new-instance v2, Landroid/support/v4/g80;

    invoke-direct {v2, v14, v0}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2, v13}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    goto :goto_16

    :cond_11
    const/4 v3, 0x1

    :cond_12
    :goto_16
    :try_start_d
    sget-object v2, Lorg/bouncycastle/x509/for;->for:Ljava/lang/String;

    invoke-static {v15, v2}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/r7;->try(Ljava/lang/Object;)Landroid/support/v4/r7;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/support/v4/r7;->goto()Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v2, Landroid/support/v4/g80;

    invoke-direct {v2, v14, v0}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2, v13}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    goto :goto_17

    :cond_13
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.noBasicConstraints"

    invoke-direct {v0, v14, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v13}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V
    :try_end_d
    .catch Landroid/support/v4/a2; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.errorProcesingBC"

    invoke-direct {v0, v14, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v13}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    :cond_14
    :goto_17
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_16

    aget-boolean v0, v0, v16

    if-nez v0, :cond_16

    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.noCertSign"

    invoke-direct {v0, v14, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v13}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    goto :goto_18

    :cond_15
    const/4 v3, 0x1

    :cond_16
    :goto_18
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    :try_start_e
    iget-object v0, v10, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-static {v0, v13}, Lorg/bouncycastle/x509/for;->this(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v7
    :try_end_e
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_e .. :try_end_e} :catch_f

    :try_start_f
    invoke-static {v7}, Lorg/bouncycastle/x509/for;->new(Ljava/security/PublicKey;)Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_f
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_f .. :try_end_f} :catch_10

    goto :goto_19

    :catch_f
    move-object/from16 v7, v19

    :catch_10
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.pubKeyError"

    invoke-direct {v0, v14, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v13}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    :goto_19
    add-int/lit8 v6, v13, -0x1

    move-object v9, v11

    move-object v5, v15

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_9

    :cond_17
    move-object/from16 v19, v7

    move-object v11, v9

    iput-object v11, v10, Lorg/bouncycastle/x509/break;->finally:Ljava/security/cert/TrustAnchor;

    move-object/from16 v2, v19

    iput-object v2, v10, Lorg/bouncycastle/x509/break;->package:Ljava/security/PublicKey;

    return-void
.end method

.method private volatile()V
    .locals 9

    iget v0, p0, Lorg/bouncycastle/x509/break;->throws:I

    iget-object v1, p0, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    if-lez v1, :cond_3

    iget-object v6, p0, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-static {v6}, Lorg/bouncycastle/x509/for;->while(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    if-nez v7, :cond_1

    if-gtz v0, :cond_0

    new-instance v7, Landroid/support/v4/g80;

    const-string v8, "CertPathReviewer.pathLengthExtended"

    invoke-direct {v7, v5, v8}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lorg/bouncycastle/x509/break;->extends(Landroid/support/v4/g80;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    :try_start_0
    sget-object v7, Lorg/bouncycastle/x509/for;->for:Ljava/lang/String;

    invoke-static {v6, v7}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/r7;->try(Ljava/lang/Object;)Landroid/support/v4/r7;

    move-result-object v5
    :try_end_0
    .catch Landroid/support/v4/a2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v6, Landroid/support/v4/g80;

    const-string v7, "CertPathReviewer.processLengthConstError"

    invoke-direct {v6, v5, v7}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v1}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/support/v4/r7;->else()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    if-ge v5, v0, :cond_2

    move v0, v5

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/g80;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "CertPathReviewer.totalPathLength"

    invoke-direct {v0, v5, v2, v1}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/break;->package(Landroid/support/v4/g80;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/security/cert/CertPath;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public abstract(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fg;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p7

    const-string v6, "CertPathReviewer.distrPtExtError"

    const-string v7, "CertPathReviewer.crlExtractionError"

    const-string v8, "CertPathReviewer.crlIssuerException"

    const-string v9, "org.bouncycastle.x509.CertPathReviewerMessages"

    new-instance v0, Landroid/support/v4/yg2;

    invoke-direct {v0}, Landroid/support/v4/yg2;-><init>()V

    :try_start_0
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/x509/for;->case(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10

    invoke-virtual {v0, v3}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    const/4 v10, 0x3

    :try_start_1
    sget-object v14, Lorg/bouncycastle/x509/for;->do:Lorg/bouncycastle/x509/this;

    invoke-virtual {v14, v0, v2}, Lorg/bouncycastle/x509/this;->if(Landroid/support/v4/yg2;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    new-instance v15, Landroid/support/v4/yg2;

    invoke-direct {v15}, Landroid/support/v4/yg2;-><init>()V

    invoke-virtual {v14, v15, v2}, Lorg/bouncycastle/x509/this;->if(Landroid/support/v4/yg2;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509CRL;

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    new-instance v14, Landroid/support/v4/g80;

    const-string v13, "CertPathReviewer.noCrlInCertstore"

    new-array v12, v10, [Ljava/lang/Object;

    new-instance v10, Landroid/support/v4/uc2;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    const/16 v18, 0x0

    aput-object v10, v12, v18

    new-instance v0, Landroid/support/v4/uc2;

    invoke-direct {v0, v15}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x1

    aput-object v0, v12, v10

    invoke-static {v11}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v10, 0x2

    aput-object v0, v12, v10

    invoke-direct {v14, v9, v13, v12}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v14, v5}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V
    :try_end_1
    .catch Landroid/support/v4/a2; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v10, Landroid/support/v4/g80;

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/support/v4/a2;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-virtual {v0}, Landroid/support/v4/a2;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v12, v13

    invoke-virtual {v0}, Landroid/support/v4/a2;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v12, v11

    invoke-direct {v10, v9, v7, v12}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v5}, Lorg/bouncycastle/x509/break;->finally(Landroid/support/v4/g80;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_3

    :cond_2
    new-instance v11, Landroid/support/v4/g80;

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    new-instance v12, Landroid/support/v4/b92;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x0

    aput-object v12, v13, v14

    new-instance v12, Landroid/support/v4/b92;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x1

    aput-object v12, v13, v14

    const-string v12, "CertPathReviewer.localInvalidCRL"

    invoke-direct {v11, v9, v12, v13}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v5}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V

    goto :goto_2

    :cond_3
    :goto_3
    new-instance v11, Landroid/support/v4/g80;

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    new-instance v12, Landroid/support/v4/b92;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x0

    aput-object v12, v13, v14

    new-instance v12, Landroid/support/v4/b92;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x1

    aput-object v12, v13, v14

    const-string v12, "CertPathReviewer.localValidCRL"

    invoke-direct {v11, v9, v12, v13}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v5}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V

    move-object v11, v0

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    move-object v11, v0

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_a

    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v0

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/bouncycastle/x509/break;->instanceof(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v15

    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catch Landroid/support/v4/fg; {:try_start_2 .. :try_end_2} :catch_6

    if-nez v10, :cond_5

    :try_start_3
    new-instance v10, Landroid/support/v4/g80;

    const-string v15, "CertPathReviewer.onlineCRLWrongCA"
    :try_end_3
    .catch Landroid/support/v4/fg; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v19, v11

    move-object/from16 p6, v12

    const/4 v11, 0x3

    :try_start_4
    new-array v12, v11, [Ljava/lang/Object;

    new-instance v11, Landroid/support/v4/uc2;

    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x0

    aput-object v11, v12, v14

    new-instance v11, Landroid/support/v4/uc2;

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/support/v4/uc2;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x1

    aput-object v11, v12, v14

    new-instance v11, Landroid/support/v4/vc2;

    invoke-direct {v11, v0}, Landroid/support/v4/vc2;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x2

    aput-object v11, v12, v14

    invoke-direct {v10, v9, v15, v12}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v5}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V
    :try_end_4
    .catch Landroid/support/v4/fg; {:try_start_4 .. :try_end_4} :catch_1

    :goto_6
    move/from16 v20, v13

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v19, v11

    move-object/from16 p6, v12

    goto/16 :goto_a

    :cond_5
    move-object/from16 v19, v11

    move-object/from16 p6, v12

    :try_start_5
    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v10, v1, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v10}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_7

    :cond_6
    new-instance v10, Landroid/support/v4/g80;

    const-string v11, "CertPathReviewer.onlineInvalidCRL"

    const/4 v12, 0x3

    new-array v15, v12, [Ljava/lang/Object;

    new-instance v12, Landroid/support/v4/b92;
    :try_end_5
    .catch Landroid/support/v4/fg; {:try_start_5 .. :try_end_5} :catch_5

    move/from16 v20, v13

    :try_start_6
    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x0

    aput-object v12, v15, v13

    new-instance v12, Landroid/support/v4/b92;

    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x1

    aput-object v12, v15, v13

    new-instance v12, Landroid/support/v4/vc2;

    invoke-direct {v12, v0}, Landroid/support/v4/vc2;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x2

    aput-object v12, v15, v13

    invoke-direct {v10, v9, v11, v15}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v5}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V
    :try_end_6
    .catch Landroid/support/v4/fg; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    move/from16 v13, v20

    goto :goto_a

    :cond_7
    :goto_7
    :try_start_7
    new-instance v10, Landroid/support/v4/g80;

    const-string v11, "CertPathReviewer.onlineValidCRL"

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    new-instance v15, Landroid/support/v4/b92;

    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v12

    invoke-direct {v15, v12}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x0

    aput-object v15, v13, v12

    new-instance v12, Landroid/support/v4/b92;

    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v15

    invoke-direct {v12, v15}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v15, 0x1

    aput-object v12, v13, v15

    new-instance v12, Landroid/support/v4/vc2;

    invoke-direct {v12, v0}, Landroid/support/v4/vc2;-><init>(Ljava/lang/Object;)V

    const/4 v15, 0x2

    aput-object v12, v13, v15

    invoke-direct {v10, v9, v11, v13}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v5}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V
    :try_end_7
    .catch Landroid/support/v4/fg; {:try_start_7 .. :try_end_7} :catch_4

    move-object v11, v14

    const/4 v10, 0x1

    goto :goto_b

    :catch_4
    move-exception v0

    const/4 v13, 0x1

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :cond_8
    move-object/from16 v19, v11

    move-object/from16 p6, v12

    goto/16 :goto_6

    :goto_8
    move-object/from16 v12, p6

    move-object/from16 v11, v19

    move/from16 v13, v20

    goto/16 :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v19, v11

    move-object/from16 p6, v12

    :goto_9
    move/from16 v20, v13

    :goto_a
    invoke-virtual {v0}, Landroid/support/v4/nv0;->getErrorMessage()Landroid/support/v4/g80;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V

    move-object/from16 v12, p6

    move-object/from16 v11, v19

    goto/16 :goto_5

    :cond_9
    move-object/from16 v19, v11

    move/from16 v20, v13

    move/from16 v10, v20

    goto :goto_b

    :cond_a
    move-object/from16 v19, v11

    move v10, v0

    :goto_b
    if-eqz v11, :cond_1d

    const/4 v0, 0x7

    if-eqz p4, :cond_c

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v12

    if-eqz v12, :cond_c

    array-length v13, v12

    if-lt v13, v0, :cond_b

    const/4 v13, 0x6

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_b

    goto :goto_c

    :cond_b
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.noCrlSigningPermited"

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    invoke-direct {v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw v2

    :cond_c
    :goto_c
    if-eqz v4, :cond_1c

    :try_start_8
    const-string v12, "BC"

    invoke-virtual {v11, v4, v12}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v12

    if-eqz v12, :cond_d

    :try_start_9
    sget-object v12, Lorg/bouncycastle/asn1/x509/if;->class:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/asn1/new;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/new;

    move-result-object v12
    :try_end_9
    .catch Landroid/support/v4/a2; {:try_start_9 .. :try_end_9} :catch_7

    if-eqz v12, :cond_d

    sget-object v13, Lorg/bouncycastle/x509/for;->native:[Ljava/lang/String;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/new;->final()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    aget-object v12, v13, v12

    goto :goto_d

    :catch_7
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    const-string v3, "CertPathReviewer.crlReasonExtError"

    invoke-direct {v2, v9, v3}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    invoke-direct {v3, v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;)V

    throw v3

    :cond_d
    const/4 v12, 0x0

    :goto_d
    if-nez v12, :cond_e

    sget-object v12, Lorg/bouncycastle/x509/for;->native:[Ljava/lang/String;

    aget-object v12, v12, v0

    :cond_e
    new-instance v0, Landroid/support/v4/mv0;

    invoke-direct {v0, v9, v12}, Landroid/support/v4/mv0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v12

    move-object/from16 v13, p3

    invoke-virtual {v13, v12}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_f

    new-instance v12, Landroid/support/v4/g80;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    new-instance v14, Landroid/support/v4/b92;

    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v14, v4}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x1

    aput-object v0, v13, v14

    const-string v0, "CertPathReviewer.revokedAfterValidation"

    invoke-direct {v12, v9, v0, v13}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v12, v5}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V

    goto :goto_e

    :cond_f
    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    new-instance v2, Landroid/support/v4/g80;

    new-array v3, v13, [Ljava/lang/Object;

    new-instance v5, Landroid/support/v4/b92;

    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v15

    aput-object v0, v3, v14

    const-string v0, "CertPathReviewer.certRevoked"

    invoke-direct {v2, v9, v0, v3}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/support/v4/fg;

    invoke-direct {v0, v2}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw v0

    :cond_10
    new-instance v0, Landroid/support/v4/g80;

    const-string v4, "CertPathReviewer.notRevoked"

    invoke-direct {v0, v9, v4}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v5}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V

    :goto_e
    invoke-virtual {v11}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v11}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    iget-object v4, v1, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Landroid/support/v4/g80;

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/Object;

    new-instance v13, Landroid/support/v4/b92;

    invoke-virtual {v11}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/support/v4/b92;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-string v13, "CertPathReviewer.crlUpdateAvailable"

    invoke-direct {v0, v9, v13, v12}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v5}, Lorg/bouncycastle/x509/break;->private(Landroid/support/v4/g80;I)V

    goto :goto_f

    :cond_11
    const/4 v4, 0x1

    const/4 v14, 0x0

    :goto_f
    :try_start_a
    sget-object v0, Lorg/bouncycastle/x509/for;->this:Ljava/lang/String;

    invoke-static {v11, v0}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v0
    :try_end_a
    .catch Landroid/support/v4/a2; {:try_start_a .. :try_end_a} :catch_e

    :try_start_b
    sget-object v5, Lorg/bouncycastle/x509/for;->break:Ljava/lang/String;

    invoke-static {v11, v5}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v5
    :try_end_b
    .catch Landroid/support/v4/a2; {:try_start_b .. :try_end_b} :catch_d

    if-eqz v5, :cond_16

    new-instance v12, Landroid/support/v4/yg2;

    invoke-direct {v12}, Landroid/support/v4/yg2;-><init>()V

    :try_start_c
    invoke-static {v11}, Lorg/bouncycastle/x509/for;->goto(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-virtual {v13}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    check-cast v5, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    :try_start_d
    sget-object v5, Lorg/bouncycastle/x509/for;->throw:Ljava/lang/String;

    invoke-static {v11, v5}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/security/cert/X509CRLSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V
    :try_end_d
    .catch Landroid/support/v4/a2; {:try_start_d .. :try_end_d} :catch_a

    :try_start_e
    sget-object v5, Lorg/bouncycastle/x509/for;->do:Lorg/bouncycastle/x509/this;

    invoke-virtual {v5, v12, v2}, Lorg/bouncycastle/x509/this;->if(Landroid/support/v4/yg2;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_e
    .catch Landroid/support/v4/a2; {:try_start_e .. :try_end_e} :catch_9

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509CRL;

    :try_start_f
    sget-object v7, Lorg/bouncycastle/x509/for;->this:Ljava/lang/String;

    invoke-static {v5, v7}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v5
    :try_end_f
    .catch Landroid/support/v4/a2; {:try_start_f .. :try_end_f} :catch_8

    if-nez v0, :cond_13

    if-nez v5, :cond_12

    goto :goto_10

    :cond_13
    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    :goto_10
    const/4 v12, 0x1

    goto :goto_11

    :catch_8
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    invoke-direct {v2, v9, v6}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    invoke-direct {v3, v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;)V

    throw v3

    :cond_14
    const/4 v12, 0x0

    :goto_11
    if-eqz v12, :cond_15

    goto :goto_12

    :cond_15
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.noBaseCRL"

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    invoke-direct {v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw v2

    :catch_9
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    invoke-direct {v2, v9, v7}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    invoke-direct {v3, v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;)V

    throw v3

    :catch_a
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    const-string v3, "CertPathReviewer.crlNbrExtError"

    invoke-direct {v2, v9, v3}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    invoke-direct {v3, v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;)V

    throw v3

    :catch_b
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    invoke-direct {v2, v9, v8}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    invoke-direct {v3, v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;)V

    throw v3

    :cond_16
    :goto_12
    if-eqz v0, :cond_1d

    invoke-static {v0}, Landroid/support/v4/do0;->else(Ljava/lang/Object;)Landroid/support/v4/do0;

    move-result-object v0

    :try_start_10
    sget-object v2, Lorg/bouncycastle/x509/for;->for:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/bouncycastle/x509/for;->else(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/final;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/r7;->try(Ljava/lang/Object;)Landroid/support/v4/r7;

    move-result-object v2
    :try_end_10
    .catch Landroid/support/v4/a2; {:try_start_10 .. :try_end_10} :catch_c

    invoke-virtual {v0}, Landroid/support/v4/do0;->const()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/support/v4/r7;->goto()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_13

    :cond_17
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.crlOnlyUserCert"

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    invoke-direct {v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw v2

    :cond_18
    :goto_13
    invoke-virtual {v0}, Landroid/support/v4/do0;->class()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/support/v4/r7;->goto()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_14

    :cond_19
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.crlOnlyCaCert"

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    invoke-direct {v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw v2

    :cond_1a
    :goto_14
    invoke-virtual {v0}, Landroid/support/v4/do0;->catch()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_15

    :cond_1b
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.crlOnlyAttrCert"

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    invoke-direct {v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw v2

    :catch_c
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    const-string v3, "CertPathReviewer.crlBCExtError"

    invoke-direct {v2, v9, v3}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    invoke-direct {v3, v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;)V

    throw v3

    :catch_d
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.deltaCrlExtError"

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    invoke-direct {v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw v2

    :catch_e
    new-instance v0, Landroid/support/v4/g80;

    invoke-direct {v0, v9, v6}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    invoke-direct {v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw v2

    :catch_f
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    const-string v3, "CertPathReviewer.crlVerifyFailed"

    invoke-direct {v2, v9, v3}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    invoke-direct {v3, v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;)V

    throw v3

    :cond_1c
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.crlNoIssuerPublicKey"

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    invoke-direct {v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw v2

    :cond_1d
    :goto_15
    if-eqz v10, :cond_1e

    return-void

    :cond_1e
    new-instance v0, Landroid/support/v4/g80;

    const-string v2, "CertPathReviewer.noValidCrlFound"

    invoke-direct {v0, v9, v2}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/support/v4/fg;

    invoke-direct {v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw v2

    :catch_10
    move-exception v0

    new-instance v2, Landroid/support/v4/g80;

    invoke-direct {v2, v9, v8}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/support/v4/fg;

    invoke-direct {v3, v2, v0}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;Ljava/lang/Throwable;)V

    goto :goto_17

    :goto_16
    throw v3

    :goto_17
    goto :goto_16
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/x509/break;->throws:I

    return v0
.end method

.method public c(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/break;->implements()V

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->extends:[Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public d()[Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/break;->implements()V

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->extends:[Ljava/util/List;

    return-object v0
.end method

.method public e(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/break;->implements()V

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->default:[Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public extends(Landroid/support/v4/g80;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->extends:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()[Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/break;->implements()V

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->default:[Ljava/util/List;

    return-object v0
.end method

.method public finally(Landroid/support/v4/g80;I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/x509/break;->throws:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->extends:[Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public g(Landroid/support/v4/b5;)Ljava/util/Vector;
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/b5;->try()[Landroid/support/v4/m;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/support/v4/m;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sget-object v3, Landroid/support/v4/m;->new:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/support/v4/m;->new()Landroid/support/v4/tg0;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/tg0;->getTagNo()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/tg0;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/g;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/g;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public h()Ljava/security/cert/PolicyNode;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/break;->implements()V

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->private:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public i()Ljava/security/PublicKey;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/break;->implements()V

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->package:Ljava/security/PublicKey;

    return-object v0
.end method

.method public implements()V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/x509/break;->abstract:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->default:[Ljava/util/List;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/x509/break;->throws:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lorg/bouncycastle/x509/break;->default:[Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/x509/break;->extends:[Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/x509/break;->default:[Ljava/util/List;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/x509/break;->extends:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/x509/break;->transient()V

    invoke-direct {p0}, Lorg/bouncycastle/x509/break;->strictfp()V

    invoke-direct {p0}, Lorg/bouncycastle/x509/break;->volatile()V

    invoke-direct {p0}, Lorg/bouncycastle/x509/break;->interface()V

    invoke-direct {p0}, Lorg/bouncycastle/x509/break;->continue()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object not initialized. Call init() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public j()Ljava/security/cert/TrustAnchor;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/break;->implements()V

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->finally:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method public k(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fg;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/x509/for;->case(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubject([B)V

    sget-object v2, Lorg/bouncycastle/asn1/x509/if;->static:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/class;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/c5;->else(Ljava/lang/Object;)Landroid/support/v4/c5;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/c5;->case()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Landroid/support/v4/c5;->this()[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/j;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/x509/for;->case(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    return-object v0

    :catch_0
    new-instance p1, Landroid/support/v4/g80;

    const-string p2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v0, "CertPathReviewer.trustAnchorIssuerError"

    invoke-direct {p1, p2, v0}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/support/v4/fg;

    invoke-direct {p2, p1}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public l(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fg;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/x509/break;->abstract:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/x509/break;->abstract:Z

    const-string v0, "certPath was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bouncycastle/x509/break;->public:Ljava/security/cert/CertPath;

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/x509/break;->throws:I

    iget-object p1, p0, Lorg/bouncycastle/x509/break;->switch:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/PKIXParameters;

    iput-object p1, p0, Lorg/bouncycastle/x509/break;->return:Ljava/security/cert/PKIXParameters;

    invoke-static {p1}, Lorg/bouncycastle/x509/for;->final(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/break;->static:Ljava/util/Date;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/x509/break;->default:[Ljava/util/List;

    iput-object p1, p0, Lorg/bouncycastle/x509/break;->extends:[Ljava/util/List;

    iput-object p1, p0, Lorg/bouncycastle/x509/break;->finally:Ljava/security/cert/TrustAnchor;

    iput-object p1, p0, Lorg/bouncycastle/x509/break;->package:Ljava/security/PublicKey;

    iput-object p1, p0, Lorg/bouncycastle/x509/break;->private:Ljava/security/cert/PolicyNode;

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/fg;

    new-instance p2, Landroid/support/v4/g80;

    const-string v0, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v1, "CertPathReviewer.emptyCertPath"

    invoke-direct {p2, v0, v1}, Landroid/support/v4/g80;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/support/v4/fg;-><init>(Landroid/support/v4/g80;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "object is already initialized!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()Z
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/x509/break;->implements()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/x509/break;->extends:[Ljava/util/List;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public package(Landroid/support/v4/g80;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->default:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public private(Landroid/support/v4/g80;I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/x509/break;->throws:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/break;->default:[Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public protected(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fg;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/x509/break;->abstract(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V

    return-void
.end method

.method public synchronized(Landroid/support/v4/ye;)Ljava/util/Vector;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/ye;->try()[Landroid/support/v4/q10;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/support/v4/q10;->case()Landroid/support/v4/r10;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/r10;->goto()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/support/v4/r10;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/ug0;->case(Ljava/lang/Object;)Landroid/support/v4/ug0;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/ug0;->goto()[Landroid/support/v4/tg0;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/support/v4/tg0;->getTagNo()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/support/v4/tg0;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/g;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/g;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
