.class public Landroid/support/v4/y21;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public case:Ljava/security/PublicKey;

.field public do:Landroid/support/v4/b1;

.field public for:[B

.field public if:Landroid/support/v4/b1;

.field public new:Ljava/lang/String;

.field public try:Lorg/bouncycastle/asn1/instanceof;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/b1;Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/y21;->new:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/y21;->do:Landroid/support/v4/b1;

    iput-object p3, p0, Landroid/support/v4/y21;->case:Ljava/security/PublicKey;

    new-instance p2, Landroid/support/v4/import;

    invoke-direct {p2}, Landroid/support/v4/import;-><init>()V

    invoke-direct {p0}, Landroid/support/v4/y21;->case()Lorg/bouncycastle/asn1/final;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p3, Lorg/bouncycastle/asn1/g;

    invoke-direct {p3, p1}, Lorg/bouncycastle/asn1/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :try_start_0
    new-instance p1, Lorg/bouncycastle/asn1/instanceof;

    new-instance p3, Lorg/bouncycastle/asn1/n;

    invoke-direct {p3, p2}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/instanceof;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Landroid/support/v4/y21;->try:Lorg/bouncycastle/asn1/instanceof;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception encoding key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/y21;->do:Landroid/support/v4/b1;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/if;->super()[B

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/y21;->for:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/super;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/g;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/g;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/y21;->new:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/asn1/instanceof;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/instanceof;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/y21;->try:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object p1

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v1, Lorg/bouncycastle/asn1/instanceof;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/instanceof;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/if;->const()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/y21;->if:Landroid/support/v4/b1;

    invoke-virtual {p1}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BC"

    invoke-static {p1, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/y21;->case:Ljava/security/PublicKey;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid PKAC (len): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SPKAC (size):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/support/v4/y21;->goto([B)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/y21;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-void
.end method

.method private case()Lorg/bouncycastle/asn1/final;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/y21;->case:Ljava/security/PublicKey;

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Lorg/bouncycastle/asn1/else;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static goto([B)Lorg/bouncycastle/asn1/super;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/else;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/y21;->new:Ljava/lang/String;

    return-void
.end method

.method public catch(Landroid/support/v4/b1;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/y21;->if:Landroid/support/v4/b1;

    return-void
.end method

.method public class(Ljava/security/PublicKey;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/y21;->case:Ljava/security/PublicKey;

    return-void
.end method

.method public const(Landroid/support/v4/b1;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/y21;->do:Landroid/support/v4/b1;

    return-void
.end method

.method public else()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y21;->case:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/y21;->super(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public new()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y21;->new:Ljava/lang/String;

    return-object v0
.end method

.method public super(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/y21;->do:Landroid/support/v4/b1;

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :goto_0
    new-instance p1, Landroid/support/v4/import;

    invoke-direct {p1}, Landroid/support/v4/import;-><init>()V

    invoke-direct {p0}, Landroid/support/v4/y21;->case()Lorg/bouncycastle/asn1/final;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p2, Lorg/bouncycastle/asn1/g;

    iget-object v1, p0, Landroid/support/v4/y21;->new:Ljava/lang/String;

    invoke-direct {p2, v1}, Lorg/bouncycastle/asn1/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :try_start_0
    new-instance p2, Lorg/bouncycastle/asn1/n;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    const-string p1, "DER"

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/y21;->for:[B

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/SignatureException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public this()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y21;->do:Landroid/support/v4/b1;

    return-object v0
.end method

.method public throw(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/y21;->new:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Landroid/support/v4/y21;->do:Landroid/support/v4/b1;

    invoke-virtual {p1}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BC"

    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/y21;->case:Ljava/security/PublicKey;

    invoke-virtual {p1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v0, p0, Landroid/support/v4/y21;->try:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/if;->const()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    iget-object v0, p0, Landroid/support/v4/y21;->for:[B

    invoke-virtual {p1, v0}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Landroid/support/v4/import;

    invoke-direct {v1}, Landroid/support/v4/import;-><init>()V

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/y21;->case()Lorg/bouncycastle/asn1/final;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Lorg/bouncycastle/asn1/g;

    iget-object v3, p0, Landroid/support/v4/y21;->new:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/y21;->do:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/instanceof;

    iget-object v2, p0, Landroid/support/v4/y21;->for:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/instanceof;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y21;->if:Landroid/support/v4/b1;

    return-object v0
.end method
