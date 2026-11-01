.class public Landroid/support/v4/w32;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public break:Lorg/bouncycastle/asn1/instanceof;

.field public case:Landroid/support/v4/t62;

.field public catch:Lorg/bouncycastle/asn1/instanceof;

.field public class:Landroid/support/v4/y90;

.field public do:Lorg/bouncycastle/asn1/super;

.field public else:Landroid/support/v4/t62;

.field public for:Lorg/bouncycastle/asn1/goto;

.field public goto:Landroid/support/v4/tg2;

.field public if:Lorg/bouncycastle/asn1/goto;

.field public new:Landroid/support/v4/b1;

.field public this:Lorg/bouncycastle/asn1/x509/try;

.field public try:Landroid/support/v4/tg2;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 8

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/w32;->do:Lorg/bouncycastle/asn1/super;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/import;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-static {v1, v4}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/w32;->if:Lorg/bouncycastle/asn1/goto;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v1, p0, Landroid/support/v4/w32;->if:Lorg/bouncycastle/asn1/goto;

    const/4 v1, -0x1

    :goto_0
    iget-object v5, p0, Landroid/support/v4/w32;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    iget-object v2, p0, Landroid/support/v4/w32;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/support/v4/w32;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v5, 0x2

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/w32;->for:Lorg/bouncycastle/asn1/goto;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/w32;->new:Landroid/support/v4/b1;

    add-int/lit8 v5, v1, 0x3

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/w32;->try:Landroid/support/v4/tg2;

    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/super;

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/t62;->try(Ljava/lang/Object;)Landroid/support/v4/t62;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v4/w32;->case:Landroid/support/v4/t62;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/t62;->try(Ljava/lang/Object;)Landroid/support/v4/t62;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/w32;->else:Landroid/support/v4/t62;

    add-int/lit8 v5, v1, 0x5

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/w32;->goto:Landroid/support/v4/tg2;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/w32;->this:Lorg/bouncycastle/asn1/x509/try;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    if-eqz v5, :cond_4

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version 1 certificate contains extra data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_3
    if-lez v5, :cond_9

    add-int v2, v1, v5

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v6

    if-eq v6, v4, :cond_8

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    if-nez v3, :cond_5

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/w32;->class:Landroid/support/v4/y90;

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version 2 certificate cannot contain extensions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered in structure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/instanceof;->return(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/w32;->catch:Lorg/bouncycastle/asn1/instanceof;

    goto :goto_4

    :cond_8
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/instanceof;->return(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/w32;->break:Lorg/bouncycastle/asn1/instanceof;

    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_9
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version number not recognised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/w32;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/w32;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/w32;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/w32;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/w32;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/w32;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/w32;->case(Ljava/lang/Object;)Landroid/support/v4/w32;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->for:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public catch()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->new:Landroid/support/v4/b1;

    return-object v0
.end method

.method public class()Landroid/support/v4/t62;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->case:Landroid/support/v4/t62;

    return-object v0
.end method

.method public const()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->goto:Landroid/support/v4/tg2;

    return-object v0
.end method

.method public final()Lorg/bouncycastle/asn1/x509/try;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->this:Lorg/bouncycastle/asn1/x509/try;

    return-object v0
.end method

.method public goto()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->try:Landroid/support/v4/tg2;

    return-object v0
.end method

.method public new()Landroid/support/v4/t62;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->else:Landroid/support/v4/t62;

    return-object v0
.end method

.method public super()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->catch:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->break:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public throw()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->if:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->do:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method

.method public try()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->class:Landroid/support/v4/y90;

    return-object v0
.end method

.method public while()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w32;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
