.class public Landroid/support/v4/bh2;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field public do:Lorg/bouncycastle/asn1/super;

.field public for:Landroid/support/v4/b1;

.field public if:Landroid/support/v4/x32;

.field public new:Lorg/bouncycastle/asn1/instanceof;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/bh2;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/x32;->case(Ljava/lang/Object;)Landroid/support/v4/x32;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/bh2;->if:Landroid/support/v4/x32;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/bh2;->for:Landroid/support/v4/b1;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/instanceof;->public(Ljava/lang/Object;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/bh2;->new:Lorg/bouncycastle/asn1/instanceof;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for a certificate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/bh2;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/bh2;->try(Ljava/lang/Object;)Landroid/support/v4/bh2;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/bh2;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/bh2;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/bh2;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/bh2;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/bh2;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public break()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bh2;->for:Landroid/support/v4/b1;

    return-object v0
.end method

.method public catch()Landroid/support/v4/t62;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bh2;->if:Landroid/support/v4/x32;

    invoke-virtual {v0}, Landroid/support/v4/x32;->class()Landroid/support/v4/t62;

    move-result-object v0

    return-object v0
.end method

.method public class()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bh2;->if:Landroid/support/v4/x32;

    invoke-virtual {v0}, Landroid/support/v4/x32;->const()Landroid/support/v4/tg2;

    move-result-object v0

    return-object v0
.end method

.method public const()Lorg/bouncycastle/asn1/x509/try;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bh2;->if:Landroid/support/v4/x32;

    invoke-virtual {v0}, Landroid/support/v4/x32;->final()Lorg/bouncycastle/asn1/x509/try;

    move-result-object v0

    return-object v0
.end method

.method public else()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bh2;->if:Landroid/support/v4/x32;

    invoke-virtual {v0}, Landroid/support/v4/x32;->goto()Landroid/support/v4/tg2;

    move-result-object v0

    return-object v0
.end method

.method public final()Landroid/support/v4/x32;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bh2;->if:Landroid/support/v4/x32;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bh2;->if:Landroid/support/v4/x32;

    invoke-virtual {v0}, Landroid/support/v4/x32;->break()Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    return-object v0
.end method

.method public new()Landroid/support/v4/t62;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bh2;->if:Landroid/support/v4/x32;

    invoke-virtual {v0}, Landroid/support/v4/x32;->new()Landroid/support/v4/t62;

    move-result-object v0

    return-object v0
.end method

.method public super()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bh2;->if:Landroid/support/v4/x32;

    invoke-virtual {v0}, Landroid/support/v4/x32;->throw()I

    move-result v0

    return v0
.end method

.method public this()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bh2;->new:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/bh2;->do:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method
