.class public Landroid/support/v4/mq1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final break:Lorg/bouncycastle/asn1/catch;

.field public static final case:Lorg/bouncycastle/asn1/catch;

.field public static final catch:Lorg/bouncycastle/asn1/catch;

.field public static final class:Lorg/bouncycastle/asn1/catch;

.field public static final else:Lorg/bouncycastle/asn1/catch;

.field public static final for:Lorg/bouncycastle/asn1/catch;

.field public static final goto:Lorg/bouncycastle/asn1/catch;

.field public static final if:Lorg/bouncycastle/asn1/catch;

.field public static final new:Lorg/bouncycastle/asn1/catch;

.field public static final this:Lorg/bouncycastle/asn1/catch;

.field public static final try:Lorg/bouncycastle/asn1/catch;


# instance fields
.field private do:Lorg/bouncycastle/asn1/super;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->preferSignedData:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/mq1;->if:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->canNotDecryptAny:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/mq1;->for:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sMIMECapabilitiesVersions:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/mq1;->new:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/mq1;->try:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/mq1;->case:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/mq1;->else:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.6.1.4.1.188.7.1.1.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/mq1;->goto:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.2.840.113533.7.66.10"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/mq1;->this:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/mq1;->break:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/mq1;->catch:Lorg/bouncycastle/asn1/catch;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/catch;

    sput-object v0, Landroid/support/v4/mq1;->class:Lorg/bouncycastle/asn1/catch;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/mq1;->do:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/mq1;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Landroid/support/v4/mq1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/mq1;

    check-cast p0, Lorg/bouncycastle/asn1/super;

    invoke-direct {v0, p0}, Landroid/support/v4/mq1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Landroid/support/v4/p4;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/mq1;

    check-cast p0, Landroid/support/v4/p4;

    invoke-virtual {p0}, Landroid/support/v4/p4;->try()Lorg/bouncycastle/asn1/throw;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/throw;->super(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/super;

    invoke-direct {v0, p0}, Landroid/support/v4/mq1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Landroid/support/v4/mq1;

    return-object p0
.end method


# virtual methods
.method public new(Lorg/bouncycastle/asn1/catch;)Ljava/util/Vector;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/mq1;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/oq1;->try(Ljava/lang/Object;)Landroid/support/v4/oq1;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/oq1;->try(Ljava/lang/Object;)Landroid/support/v4/oq1;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/oq1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mq1;->do:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method
