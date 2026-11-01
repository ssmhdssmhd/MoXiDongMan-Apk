.class public Landroid/support/v4/oq1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final break:Lorg/bouncycastle/asn1/catch;

.field public static final case:Lorg/bouncycastle/asn1/catch;

.field public static final catch:Lorg/bouncycastle/asn1/catch;

.field public static final else:Lorg/bouncycastle/asn1/catch;

.field public static final for:Lorg/bouncycastle/asn1/catch;

.field public static final goto:Lorg/bouncycastle/asn1/catch;

.field public static final new:Lorg/bouncycastle/asn1/catch;

.field public static final this:Lorg/bouncycastle/asn1/catch;

.field public static final try:Lorg/bouncycastle/asn1/catch;


# instance fields
.field private do:Lorg/bouncycastle/asn1/catch;

.field private if:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->preferSignedData:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/oq1;->for:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->canNotDecryptAny:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/oq1;->new:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sMIMECapabilitiesVersions:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/oq1;->try:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/oq1;->case:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/oq1;->else:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/oq1;->goto:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/oq1;->this:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/oq1;->break:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/oq1;->catch:Lorg/bouncycastle/asn1/catch;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/oq1;->do:Lorg/bouncycastle/asn1/catch;

    iput-object p2, p0, Landroid/support/v4/oq1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Landroid/support/v4/oq1;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/final;

    iput-object p1, p0, Landroid/support/v4/oq1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    :cond_0
    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/oq1;
    .locals 1

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/support/v4/oq1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/oq1;

    check-cast p0, Lorg/bouncycastle/asn1/super;

    invoke-direct {v0, p0}, Landroid/support/v4/oq1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid SMIMECapability"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    check-cast p0, Landroid/support/v4/oq1;

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/oq1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/oq1;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/oq1;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/oq1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
