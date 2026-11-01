.class public Landroid/support/v4/r7;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/asn1/for;

.field public if:Lorg/bouncycastle/asn1/goto;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/r7;->if:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/r7;->if:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/r7;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    iput-object v1, p0, Landroid/support/v4/r7;->if:Lorg/bouncycastle/asn1/goto;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/for;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/for;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/for;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/r7;->if:Lorg/bouncycastle/asn1/goto;

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/r7;->if:Lorg/bouncycastle/asn1/goto;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong sequence in constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/r7;->if:Lorg/bouncycastle/asn1/goto;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    :goto_0
    iput-object v0, p0, Landroid/support/v4/r7;->if:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/r7;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/r7;->try(Ljava/lang/Object;)Landroid/support/v4/r7;

    move-result-object p0

    return-object p0
.end method

.method public static new(Landroid/support/v4/y90;)Landroid/support/v4/r7;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/if;->break:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p0, v0}, Landroid/support/v4/y90;->this(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/r7;->try(Ljava/lang/Object;)Landroid/support/v4/r7;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/r7;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/r7;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/r7;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/else;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/x509/else;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/else;->do(Lorg/bouncycastle/asn1/x509/else;)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/r7;->try(Ljava/lang/Object;)Landroid/support/v4/r7;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Landroid/support/v4/r7;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/r7;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r7;->if:Lorg/bouncycastle/asn1/goto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public goto()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/for;->throw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/r7;->if:Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/r7;->if:Lorg/bouncycastle/asn1/goto;

    const-string v1, "BasicConstraints: isCa("

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/r7;->do:Lorg/bouncycastle/asn1/for;

    if-nez v0, :cond_0

    const-string v0, "BasicConstraints: isCa(false)"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/r7;->goto()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/r7;->goto()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/r7;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
