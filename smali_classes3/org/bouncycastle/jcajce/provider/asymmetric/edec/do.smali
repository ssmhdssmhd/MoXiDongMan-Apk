.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/interfaces/EdDSAKey;
.implements Ljava/security/PrivateKey;


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private final attributes:[B

.field private transient do:Landroid/support/v4/a4;

.field private final hasPublicKey:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/a4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->hasPublicKey:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->attributes:[B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->do:Landroid/support/v4/a4;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/do;->break()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->hasPublicKey:Z

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/do;->new()Lorg/bouncycastle/asn1/throw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/do;->new()Lorg/bouncycastle/asn1/throw;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->attributes:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->do(Lorg/bouncycastle/asn1/pkcs/do;)V

    return-void
.end method

.method private do(Lorg/bouncycastle/asn1/pkcs/do;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/params/new;

    invoke-static {v0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/params/new;-><init>([BI)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/params/if;

    invoke-static {v0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/params/if;-><init>([BI)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->do:Landroid/support/v4/a4;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->do(Lorg/bouncycastle/asn1/pkcs/do;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetKeyParameters()Landroid/support/v4/a4;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->do:Landroid/support/v4/a4;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->getEncoded()[B

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p1

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->do:Landroid/support/v4/a4;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/new;

    if-eqz v0, :cond_0

    const-string v0, "Ed448"

    goto :goto_0

    :cond_0
    const-string v0, "Ed25519"

    :goto_0
    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->attributes:[B

    invoke-static {v0}, Lorg/bouncycastle/asn1/throw;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/throw;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->do:Landroid/support/v4/a4;

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/util/class;->if(Landroid/support/v4/a4;Lorg/bouncycastle/asn1/throw;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object v1

    iget-boolean v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->hasPublicKey:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/do;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/throw;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/q3;->n([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->do:Landroid/support/v4/a4;

    instance-of v1, v0, Lorg/bouncycastle/crypto/params/new;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/crypto/params/new;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/new;->for()Lorg/bouncycastle/crypto/params/try;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/bouncycastle/crypto/params/if;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/if;->for()Lorg/bouncycastle/crypto/params/for;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/do;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Private Key"

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/this;->for(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/a4;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
