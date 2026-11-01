.class public interface abstract Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final id_pkix_ocsp:Lorg/bouncycastle/asn1/catch;

.field public static final id_pkix_ocsp_archive_cutoff:Lorg/bouncycastle/asn1/catch;

.field public static final id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/catch;

.field public static final id_pkix_ocsp_crl:Lorg/bouncycastle/asn1/catch;

.field public static final id_pkix_ocsp_extended_revoke:Lorg/bouncycastle/asn1/catch;

.field public static final id_pkix_ocsp_nocheck:Lorg/bouncycastle/asn1/catch;

.field public static final id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/catch;

.field public static final id_pkix_ocsp_pref_sig_algs:Lorg/bouncycastle/asn1/catch;

.field public static final id_pkix_ocsp_response:Lorg/bouncycastle/asn1/catch;

.field public static final id_pkix_ocsp_service_locator:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.5.5.7.48.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.3.6.1.5.5.7.48.1.1"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.3.6.1.5.5.7.48.1.2"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.3.6.1.5.5.7.48.1.3"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_crl:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.3.6.1.5.5.7.48.1.4"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_response:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.3.6.1.5.5.7.48.1.5"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nocheck:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.3.6.1.5.5.7.48.1.6"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_archive_cutoff:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.3.6.1.5.5.7.48.1.7"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_service_locator:Lorg/bouncycastle/asn1/catch;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_pref_sig_algs:Lorg/bouncycastle/asn1/catch;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_extended_revoke:Lorg/bouncycastle/asn1/catch;

    return-void
.end method
