.class public Landroid/support/v4/r4;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private case:Landroid/support/v4/k4;

.field private do:Lorg/bouncycastle/asn1/goto;

.field private else:Lorg/bouncycastle/asn1/super;

.field private for:Landroid/support/v4/j4;

.field private goto:Lorg/bouncycastle/asn1/instanceof;

.field private if:Landroid/support/v4/rj0;

.field private new:Landroid/support/v4/b1;

.field private this:Landroid/support/v4/y90;

.field private try:Lorg/bouncycastle/asn1/goto;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/goto;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/r4;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v2, p0, Landroid/support/v4/r4;->do:Lorg/bouncycastle/asn1/goto;

    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/rj0;->case(Ljava/lang/Object;)Landroid/support/v4/rj0;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/r4;->if:Landroid/support/v4/rj0;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/j4;->new(Ljava/lang/Object;)Landroid/support/v4/j4;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/r4;->for:Landroid/support/v4/j4;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/r4;->new:Landroid/support/v4/b1;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/r4;->try:Lorg/bouncycastle/asn1/goto;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/k4;->new(Ljava/lang/Object;)Landroid/support/v4/k4;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/r4;->case:Landroid/support/v4/k4;

    add-int/lit8 v2, v0, 0x5

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/r4;->else:Lorg/bouncycastle/asn1/super;

    add-int/2addr v0, v1

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/instanceof;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/instanceof;->public(Ljava/lang/Object;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/r4;->goto:Lorg/bouncycastle/asn1/instanceof;

    goto :goto_2

    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/asn1/super;

    if-nez v2, :cond_2

    instance-of v1, v1, Landroid/support/v4/y90;

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/r4;->this:Landroid/support/v4/y90;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

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

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public static goto(Ljava/lang/Object;)Landroid/support/v4/r4;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/r4;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/r4;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/r4;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/r4;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static this(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/r4;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/r4;->goto(Ljava/lang/Object;)Landroid/support/v4/r4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Landroid/support/v4/j4;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r4;->for:Landroid/support/v4/j4;

    return-object v0
.end method

.method public case()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r4;->this:Landroid/support/v4/y90;

    return-object v0
.end method

.method public catch()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r4;->goto:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public class()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r4;->try:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public const()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r4;->new:Landroid/support/v4/b1;

    return-object v0
.end method

.method public else()Landroid/support/v4/rj0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r4;->if:Landroid/support/v4/rj0;

    return-object v0
.end method

.method public final()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r4;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public new()Landroid/support/v4/k4;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r4;->case:Landroid/support/v4/k4;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/r4;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/r4;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/r4;->if:Landroid/support/v4/rj0;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/r4;->for:Landroid/support/v4/j4;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/r4;->new:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/r4;->try:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/r4;->case:Landroid/support/v4/k4;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/r4;->else:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/r4;->goto:Lorg/bouncycastle/asn1/instanceof;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/r4;->this:Landroid/support/v4/y90;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/super;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r4;->else:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method
