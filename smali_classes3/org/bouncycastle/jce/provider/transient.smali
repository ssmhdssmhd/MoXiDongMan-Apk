.class public Lorg/bouncycastle/jce/provider/transient;
.super Lorg/bouncycastle/x509/super;
.source "SourceFile"


# static fields
.field private static final new:Lorg/bouncycastle/jce/provider/static;


# instance fields
.field private do:Lorg/bouncycastle/asn1/throw;

.field private for:Ljava/io/InputStream;

.field private if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/jce/provider/static;

    const-string v1, "CRL"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/static;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/transient;->new:Lorg/bouncycastle/jce/provider/static;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/x509/super;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/transient;->do:Lorg/bouncycastle/asn1/throw;

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/jce/provider/transient;->if:I

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/transient;->for:Ljava/io/InputStream;

    return-void
.end method

.method private case(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/jce/provider/transient;->new:Lorg/bouncycastle/jce/provider/static;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/static;->if(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/jce/provider/protected;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/do;->new(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/do;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/protected;-><init>(Lorg/bouncycastle/asn1/x509/do;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private new()Ljava/security/cert/CRL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/transient;->do:Lorg/bouncycastle/asn1/throw;

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/bouncycastle/jce/provider/transient;->if:I

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/throw;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/jce/provider/protected;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/transient;->do:Lorg/bouncycastle/asn1/throw;

    iget v2, p0, Lorg/bouncycastle/jce/provider/transient;->if:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/jce/provider/transient;->if:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/throw;->super(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/do;->new(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/do;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/protected;-><init>(Lorg/bouncycastle/asn1/x509/do;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private try(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/else;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/super;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/catch;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/ky1;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ky1;-><init>(Lorg/bouncycastle/asn1/super;)V

    invoke-virtual {v0}, Landroid/support/v4/ky1;->new()Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/transient;->do:Lorg/bouncycastle/asn1/throw;

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/transient;->new()Ljava/security/cert/CRL;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/jce/provider/protected;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/do;->new(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/do;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/protected;-><init>(Lorg/bouncycastle/asn1/x509/do;)V

    return-object v0
.end method


# virtual methods
.method public do(Ljava/io/InputStream;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/transient;->for:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/transient;->do:Lorg/bouncycastle/asn1/throw;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jce/provider/transient;->if:I

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/transient;->for:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/transient;->for:Ljava/io/InputStream;

    :cond_0
    return-void
.end method

.method public for()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/x12;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/transient;->if()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CRL;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public if()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/x12;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/transient;->do:Lorg/bouncycastle/asn1/throw;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lorg/bouncycastle/jce/provider/transient;->if:I

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/throw;->size()I

    move-result v0

    if-eq v2, v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/transient;->new()Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0

    :cond_0
    iput-object v1, p0, Lorg/bouncycastle/jce/provider/transient;->do:Lorg/bouncycastle/asn1/throw;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jce/provider/transient;->if:I

    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/transient;->for:Ljava/io/InputStream;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/transient;->for:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return-object v1

    :cond_2
    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/transient;->for:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/transient;->for:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/transient;->case(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/transient;->for:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/transient;->for:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/transient;->try(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v4/x12;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/x12;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
