.class public Lorg/bouncycastle/asn1/x509/case;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/x509/case$if;,
        Lorg/bouncycastle/asn1/x509/case$for;,
        Lorg/bouncycastle/asn1/x509/case$new;
    }
.end annotation


# instance fields
.field public case:Lorg/bouncycastle/asn1/super;

.field public do:Lorg/bouncycastle/asn1/goto;

.field public else:Landroid/support/v4/y90;

.field public for:Landroid/support/v4/tg2;

.field public if:Landroid/support/v4/b1;

.field public new:Landroid/support/v4/t62;

.field public try:Landroid/support/v4/t62;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/goto;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/case;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/case;->do:Lorg/bouncycastle/asn1/goto;

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/case;->if:Landroid/support/v4/b1;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/case;->for:Landroid/support/v4/tg2;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/t62;->try(Ljava/lang/Object;)Landroid/support/v4/t62;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/case;->new:Landroid/support/v4/t62;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/native;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/case;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/t62;

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/t62;->try(Ljava/lang/Object;)Landroid/support/v4/t62;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/case;->try:Landroid/support/v4/t62;

    move v1, v0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/import;

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/case;->case:Lorg/bouncycastle/asn1/super;

    move v1, v0

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/case;->else:Landroid/support/v4/y90;

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/x509/case;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/case;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/case;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/case;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/case;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/case;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/case;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/case;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public break()[Lorg/bouncycastle/asn1/x509/case$if;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/case;->case:Lorg/bouncycastle/asn1/super;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lorg/bouncycastle/asn1/x509/case$if;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v2, v0, [Lorg/bouncycastle/asn1/x509/case$if;

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/case;->case:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/case$if;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/case$if;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public catch()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/case;->if:Landroid/support/v4/b1;

    return-object v0
.end method

.method public class()Landroid/support/v4/t62;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/case;->new:Landroid/support/v4/t62;

    return-object v0
.end method

.method public const()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/case;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public else()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/case;->for:Landroid/support/v4/tg2;

    return-object v0
.end method

.method public final()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/case;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public goto()Landroid/support/v4/t62;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/case;->try:Landroid/support/v4/t62;

    return-object v0
.end method

.method public new()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/case;->else:Landroid/support/v4/y90;

    return-object v0
.end method

.method public this()Ljava/util/Enumeration;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/case;->case:Lorg/bouncycastle/asn1/super;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/case$for;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x509/case$for;-><init>(Lorg/bouncycastle/asn1/x509/case;Lorg/bouncycastle/asn1/x509/case$do;)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/x509/case$new;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/asn1/x509/case$new;-><init>(Lorg/bouncycastle/asn1/x509/case;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/case;->do:Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/case;->if:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/case;->for:Landroid/support/v4/tg2;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/case;->new:Landroid/support/v4/t62;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/case;->try:Landroid/support/v4/t62;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/case;->case:Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/case;->else:Landroid/support/v4/y90;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/case;->else:Landroid/support/v4/y90;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
