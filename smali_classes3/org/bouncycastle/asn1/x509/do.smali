.class public Lorg/bouncycastle/asn1/x509/do;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/asn1/x509/case;

.field public for:Lorg/bouncycastle/asn1/instanceof;

.field public if:Landroid/support/v4/b1;

.field public new:Z

.field public try:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/do;->new:Z

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/case;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/case;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/do;->do:Lorg/bouncycastle/asn1/x509/case;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/do;->if:Landroid/support/v4/b1;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/instanceof;->public(Ljava/lang/Object;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/do;->for:Lorg/bouncycastle/asn1/instanceof;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for CertificateList"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static new(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/do;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/do;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/do;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/do;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/do;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/x509/do;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/do;->new(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/do;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/do;->for:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public case()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/do;->do:Lorg/bouncycastle/asn1/x509/case;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/case;->else()Landroid/support/v4/tg2;

    move-result-object v0

    return-object v0
.end method

.method public catch()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/do;->if:Landroid/support/v4/b1;

    return-object v0
.end method

.method public class()Lorg/bouncycastle/asn1/x509/case;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/do;->do:Lorg/bouncycastle/asn1/x509/case;

    return-object v0
.end method

.method public const()Landroid/support/v4/t62;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/do;->do:Lorg/bouncycastle/asn1/x509/case;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/case;->class()Landroid/support/v4/t62;

    move-result-object v0

    return-object v0
.end method

.method public else()Landroid/support/v4/t62;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/do;->do:Lorg/bouncycastle/asn1/x509/case;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/case;->goto()Landroid/support/v4/t62;

    move-result-object v0

    return-object v0
.end method

.method public final()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/do;->do:Lorg/bouncycastle/asn1/x509/case;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/case;->final()I

    move-result v0

    return v0
.end method

.method public goto()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/do;->do:Lorg/bouncycastle/asn1/x509/case;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/case;->this()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/do;->new:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/bouncycastle/asn1/break;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/x509/do;->try:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/do;->new:Z

    :cond_0
    iget v0, p0, Lorg/bouncycastle/asn1/x509/do;->try:I

    return v0
.end method

.method public this()[Lorg/bouncycastle/asn1/x509/case$if;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/do;->do:Lorg/bouncycastle/asn1/x509/case;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/case;->break()[Lorg/bouncycastle/asn1/x509/case$if;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/do;->do:Lorg/bouncycastle/asn1/x509/case;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/do;->if:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/do;->for:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
