.class public Landroid/support/v4/fk1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private break:Lorg/bouncycastle/asn1/super;

.field private case:Ljava/math/BigInteger;

.field private do:I

.field private else:Ljava/math/BigInteger;

.field private for:Ljava/math/BigInteger;

.field private goto:Ljava/math/BigInteger;

.field private if:Ljava/math/BigInteger;

.field private new:Ljava/math/BigInteger;

.field private this:Ljava/math/BigInteger;

.field private try:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/fk1;->break:Lorg/bouncycastle/asn1/super;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/fk1;->do:I

    iput-object p1, p0, Landroid/support/v4/fk1;->if:Ljava/math/BigInteger;

    iput-object p2, p0, Landroid/support/v4/fk1;->for:Ljava/math/BigInteger;

    iput-object p3, p0, Landroid/support/v4/fk1;->new:Ljava/math/BigInteger;

    iput-object p4, p0, Landroid/support/v4/fk1;->try:Ljava/math/BigInteger;

    iput-object p5, p0, Landroid/support/v4/fk1;->case:Ljava/math/BigInteger;

    iput-object p6, p0, Landroid/support/v4/fk1;->else:Ljava/math/BigInteger;

    iput-object p7, p0, Landroid/support/v4/fk1;->goto:Ljava/math/BigInteger;

    iput-object p8, p0, Landroid/support/v4/fk1;->this:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/fk1;->break:Lorg/bouncycastle/asn1/super;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong version for RSA private key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Landroid/support/v4/fk1;->do:I

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fk1;->if:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fk1;->for:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fk1;->new:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fk1;->try:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fk1;->case:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fk1;->else:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fk1;->goto:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fk1;->this:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/super;

    iput-object p1, p0, Landroid/support/v4/fk1;->break:Lorg/bouncycastle/asn1/super;

    :cond_2
    return-void
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/fk1;
    .locals 3

    instance-of v0, p0, Landroid/support/v4/fk1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/fk1;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/fk1;

    check-cast p0, Lorg/bouncycastle/asn1/super;

    invoke-direct {v0, p0}, Landroid/support/v4/fk1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
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
.end method

.method public static goto(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/fk1;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/fk1;->else(Ljava/lang/Object;)Landroid/support/v4/fk1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fk1;->try:Ljava/math/BigInteger;

    return-object v0
.end method

.method public case()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fk1;->goto:Ljava/math/BigInteger;

    return-object v0
.end method

.method public catch()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fk1;->case:Ljava/math/BigInteger;

    return-object v0
.end method

.method public class()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fk1;->new:Ljava/math/BigInteger;

    return-object v0
.end method

.method public const()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fk1;->for:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final()I
    .locals 1

    iget v0, p0, Landroid/support/v4/fk1;->do:I

    return v0
.end method

.method public new()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fk1;->this:Ljava/math/BigInteger;

    return-object v0
.end method

.method public this()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fk1;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    iget v2, p0, Landroid/support/v4/fk1;->do:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/fk1;->this()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/fk1;->const()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/fk1;->class()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/fk1;->break()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/fk1;->catch()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/fk1;->try()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/fk1;->case()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Landroid/support/v4/fk1;->new()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/fk1;->break:Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fk1;->else:Ljava/math/BigInteger;

    return-object v0
.end method
