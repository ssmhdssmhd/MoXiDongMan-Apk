.class public Landroid/support/v4/x32;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field public break:Lorg/bouncycastle/asn1/instanceof;

.field public case:Landroid/support/v4/t62;

.field public catch:Lorg/bouncycastle/asn1/instanceof;

.field public class:Landroid/support/v4/fh2;

.field public do:Lorg/bouncycastle/asn1/super;

.field public else:Landroid/support/v4/t62;

.field public for:Lorg/bouncycastle/asn1/goto;

.field public goto:Landroid/support/v4/tg2;

.field public if:Lorg/bouncycastle/asn1/goto;

.field public new:Landroid/support/v4/b1;

.field public this:Lorg/bouncycastle/asn1/x509/try;

.field public try:Landroid/support/v4/tg2;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/x32;->do:Lorg/bouncycastle/asn1/super;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/x32;->if:Lorg/bouncycastle/asn1/goto;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v1, p0, Landroid/support/v4/x32;->if:Lorg/bouncycastle/asn1/goto;

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/x32;->for:Lorg/bouncycastle/asn1/goto;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/x32;->new:Landroid/support/v4/b1;

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/x32;->try:Landroid/support/v4/tg2;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/super;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/t62;->try(Ljava/lang/Object;)Landroid/support/v4/t62;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/x32;->case:Landroid/support/v4/t62;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/t62;->try(Ljava/lang/Object;)Landroid/support/v4/t62;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/x32;->else:Landroid/support/v4/t62;

    add-int/lit8 v3, v1, 0x5

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/x32;->goto:Landroid/support/v4/tg2;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/x32;->this:Lorg/bouncycastle/asn1/x509/try;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    :goto_1
    if-lez v3, :cond_4

    add-int v4, v1, v3

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v5

    if-eq v5, v2, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v4}, Landroid/support/v4/fh2;->this(Ljava/lang/Object;)Landroid/support/v4/fh2;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/x32;->class:Landroid/support/v4/fh2;

    goto :goto_2

    :cond_2
    invoke-static {v4, v0}, Lorg/bouncycastle/asn1/instanceof;->return(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/x32;->catch:Lorg/bouncycastle/asn1/instanceof;

    goto :goto_2

    :cond_3
    invoke-static {v4, v0}, Lorg/bouncycastle/asn1/instanceof;->return(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/x32;->break:Lorg/bouncycastle/asn1/instanceof;

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/x32;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/x32;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/x32;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/x32;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/x32;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/x32;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/x32;->case(Ljava/lang/Object;)Landroid/support/v4/x32;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->for:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public catch()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->new:Landroid/support/v4/b1;

    return-object v0
.end method

.method public class()Landroid/support/v4/t62;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->case:Landroid/support/v4/t62;

    return-object v0
.end method

.method public const()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->goto:Landroid/support/v4/tg2;

    return-object v0
.end method

.method public final()Lorg/bouncycastle/asn1/x509/try;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->this:Lorg/bouncycastle/asn1/x509/try;

    return-object v0
.end method

.method public goto()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->try:Landroid/support/v4/tg2;

    return-object v0
.end method

.method public new()Landroid/support/v4/t62;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->else:Landroid/support/v4/t62;

    return-object v0
.end method

.method public super()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->catch:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->break:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public throw()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->do:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method

.method public try()Landroid/support/v4/fh2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->class:Landroid/support/v4/fh2;

    return-object v0
.end method

.method public while()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x32;->if:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method
